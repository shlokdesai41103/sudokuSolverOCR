print('Setting Up')
import os
from tempfile import TemporaryFile
from turtle import color, width
os.environ['TF_CPP_MIN_LOG_LEVEL'] = '3'
import cv2
import numpy as np
from utils import *
import sudokuSolver
import matplotlib.pyplot as plt

#get image
pathImage = "Puzzles\Puzzle1.jpg"
imgH = 450
imgW = 450
model = initializePredictionModel()


#preparing image
img = cv2.imread(pathImage)
img = cv2.resize(img, (imgW, imgH)) #resize the image to make it square
blankImg = np.zeros((imgH, imgW, 3), np.uint8) #create a blank image for testing
imgThreshold = preProcess(img)

imgContours = img.copy()
imgBigContours = img.copy()
contours, hierarchy = cv2.findContours(imgThreshold, cv2.RETR_EXTERNAL, cv2.CHAIN_APPROX_SIMPLE)
cv2.drawContours(imgContours, contours, -1, (0,255,0), 3)#draws all the contours found  

#finding the biggest contour and using it as our puzzle
biggest, maxArea = biggestContour(contours)
if biggest.size != 0:
    biggest = reorder(biggest)#reorder helps reorder the points found in biggest for warpPerspective
    cv2.drawContours(imgBigContours, biggest, -1, (0, 255, 0), 10)
    pts1 = np.float32(biggest)
    pts2 = np.float32([[0,0], [imgW, 0], [0, imgH], [imgW, imgH]])#preparing the points
    matrix = cv2.getPerspectiveTransform(pts1, pts2)
    imgWarpColored = cv2.warpPerspective(img, matrix, (imgW, imgH))
    imgDetectedDigits = blankImg.copy()
    imgWarpColored = cv2.cvtColor(imgWarpColored, cv2.COLOR_BGR2GRAY)

#split the image and find each digit
imgSolvedDigits = blankImg.copy()
boxes = splitBoxes(imgWarpColored)
numbers = getPrediction(boxes, model)
imgDetectedDigits = displayNumbers(imgDetectedDigits, numbers, color=(255,0,255))
numbers = np.asarray(numbers)#turns a list into an array
posArray = np.where(numbers > 0, 0, 1)#if the value in the array is 0, replace it with a 1, if it is greater than 0 replace it with a 0

#turning the numbers read from image into a 2d array
board = np.array_split(numbers, 9)#splits the 81 element array into a 9*9 2d array
print(board[0][0])
try:
    sudokuSolver.startSolving(board)
except:
    pass
print(board)
flatList = []
for i in board:
    for j in i:
        flatList.append(j)
solvedNumbers = flatList*posArray#this creates an array excluding the numbers already present on the given puzzle ##this will later allow us to create an overlay of the numbers we solved for
imgSolvedDigits = displayNumbers(imgSolvedDigits, solvedNumbers)

#overlay solution
pts2 = np.float32(biggest)#biggest is the set of 4 points of the sudoku grid
pts1 = np.float32([[0,0], [imgW, 0], [0, imgH], [imgW, imgH]])#these are the four points were using to display the solved numbers previously
matrix = cv2.getPerspectiveTransform(pts1, pts2)#transforms the image to fit the given perspective
imgInvWarpColored = img.copy()
imgInvWarpColored = cv2.warpPerspective(imgSolvedDigits, matrix, (imgW, imgH)) 
invPerspective = cv2.addWeighted(imgInvWarpColored, 1, img, .5, 1)#this function is specefically usefull when we want to add two images together, this allows us to overlay the image of the solved numbers on top of the grid

        
#stacking the image
imgArr = ([img, imgThreshold, imgContours, imgBigContours],
          [imgDetectedDigits, imgSolvedDigits, imgInvWarpColored, invPerspective])
stackedImage = stackImages(imgArr, 1)

plt.imshow(stackedImage, cmap = 'gray', interpolation='bicubic')
plt.xticks([]), plt.yticks([])
plt.show()
