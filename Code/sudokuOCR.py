import cv2
import numpy as np
from utils import biggestContour
from utils import preProcess
from utils import stackImages
from utils import reorder
import matplotlib.pyplot as plt

#get image
pathImage = "Puzzles\Puzzle2.jpg"
imgH = 450
imgW = 450



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
    imgDetectedDigits = img.copy()
    imgWarpColored = cv2.cvtColor(imgWarpColored, cv2.COLOR_BGR2GRAY)

#stacking the image
imgArr = ([img, imgThreshold, imgContours, imgBigContours],
          [imgWarpColored, img, img, img])
stackedImage = stackImages(imgArr, 1)

plt.imshow(stackedImage, cmap = 'gray', interpolation='bicubic')
plt.xticks([]), plt.yticks([])
plt.show()
