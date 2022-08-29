print('Setting Up')
import enum
from itertools import zip_longest
from msilib.schema import Billboard
import os
from tempfile import TemporaryFile
from turtle import color, width
os.environ['TF_CPP_MIN_LOG_LEVEL'] = '3'
import cv2
import numpy as np
from utils import *
import sudokuSolver
import matplotlib.pyplot as plt

imgH = 450
imgW = 450
biggest = []
img = np.zeros((imgH, imgW, 3), np.uint8)
imgSolvedDigits = np.zeros((imgH, imgW, 3), np.uint8)
board = []
posArray = []

def app_running(path):
    
    #variable declaration
    global imgH, imgW, biggest, img, imgSolvedDigits, board, posArray

    #get image
    pathImage = path
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
    numbers2 = []
    for i in range(len(numbers)):
        numbers2.append(numbers[i].item())
    print(type(numbers2[3])) 
    return numbers2

def app_running2(board2):
    board3 = []
    
    for i in range(9):
        row = []
        for j in range(i*9,(i+1)*9):
            row.append(board2[j])
        board3.insert(i, row)
    try:
        solved = sudokuSolver.startSolving(board3)
    except:
        pass
    if solved:
        board4 = []
        for i in range(9):
            for j in range(9):
                board4.append(board3[i][j])
        print(board4)
        return board4, True
    else:
        return board2, False
    flatList = []
    for i in board:
        for j in i:
            flatList.append(j)
    numbers3 = []
    for i in range(len(flatList)):
        numbers3.append(flatList[i].item())
    print(type(numbers3[3])) 
    # solvedNumbers = flatList*posArray#this creates an array excluding the numbers already present on the given puzzle ##this will later allow us to create an overlay of the numbers we solved for
    return numbers3
    # imgSolvedDigits = displayNumbers(imgSolvedDigits, solvedNumbers)

    # #overlay solution
    # pts2 = np.float32(biggest)#biggest is the set of 4 points of the sudoku grid
    # pts1 = np.float32([[0,0], [imgW, 0], [0, imgH], [imgW, imgH]])#these are the four points were using to display the solved numbers previously
    # matrix = cv2.getPerspectiveTransform(pts1, pts2)#transforms the image to fit the given perspective
    # imgInvWarpColored = img.copy()
    # imgInvWarpColored = cv2.warpPerspective(imgSolvedDigits, matrix, (imgW, imgH)) 
    # invPerspective = cv2.addWeighted(imgInvWarpColored, 1, img, .5, 1)#this function is specefically usefull when we want to add two images together, this allows us to overlay the image of the solved numbers on top of the grid

             
#stacking the image
# imgArr = ([img, imgThreshold, imgContours, imgBigContours],
#         [imgDetectedDigits, imgSolvedDigits, imgInvWarpColored, invPerspective])
# stackedImage = stackImages(imgArr, 1)

# plt.imshow(stackedImage, cmap = 'gray', interpolation='bicubic')
# plt.xticks([]), plt.yticks([])
# plt.show()
    
