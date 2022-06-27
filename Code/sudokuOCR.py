import cv2
import numpy as np
from utils import preProcess
from utils import stackImages
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
cv2.drawContours(imgContours, contours, -1, (0,255,0), 3)  

#stacking the image
imgArr = ([img, imgThreshold, img, img],
          [img, img, img, img])
stackedImage = stackImages(imgArr, 1)

plt.imshow(stackedImage, cmap = 'gray', interpolation='bicubic')
plt.xticks([]), plt.yticks([])
plt.show()
