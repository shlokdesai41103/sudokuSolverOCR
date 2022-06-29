print('Setting Up')
import os
from turtle import color
os.environ['TF_CPP_MIN_LOG_LEVEL'] = '3'
import cv2
import numpy as np
from utils import *
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



#stacking the image
imgArr = ([img, imgThreshold, imgContours, imgBigContours],
          [imgWarpColored, imgDetectedDigits, blankImg, blankImg])
stackedImage = stackImages(imgArr, 1)

plt.imshow(stackedImage, cmap = 'gray', interpolation='bicubic')
plt.xticks([]), plt.yticks([])
plt.show()
