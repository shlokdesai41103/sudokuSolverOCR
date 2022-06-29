import cv2
import numpy as np
from torch import imag, isin
import tensorflow
from tensorflow import keras
from keras import models
from keras.models import load_model

def preProcess(img):
    gray = cv2.cvtColor(img, cv2.COLOR_BGR2GRAY) #grayscales the image
    blur = cv2.GaussianBlur(gray, (5, 5), 1) #blurs the image
    threshold = cv2.adaptiveThreshold(blur, 255, 1, 1, 11, 2) #applies adaptive threshold
    return threshold

#loading the recognition model
def initializePredictionModel():
    model = load_model('OCR Model\Code\myModel.h5')
    return model

#reorder points for warp perspective
def reorder(myPoints):
    myPoints = myPoints.reshape((4,2))
    myPointsNew = np.zeros((4,1,2), dtype=np.int32)
    add = myPoints.sum(1)
    myPointsNew[0] = myPoints[np.argmin(add)]#lowest value
    myPointsNew[3] = myPoints[np.argmax(add)]#largest value 
    diff = np.diff(myPoints, axis=1)
    myPointsNew[1] = myPoints[np.argmin(diff)]
    myPointsNew[2] = myPoints[np.argmax(diff)]
    return myPointsNew


#we use the biggestContour function to find the sudoku puzzle. We are assuming that the biggest continuous contour on the page must be the sudoku puzzle itself
def biggestContour(contours):
    biggest = np.array([])
    maxArea = 0
    for i in contours:
        area = cv2.contourArea(i)
        if area > 50:#checking the area of every contour. We do not want to include very small contours as those are just noise
            peri = cv2.arcLength(i, True)#find contour parameter
            approx = cv2.approxPolyDP(i, .02*peri, True)#find the number of corners the contour has
            if area > maxArea and len(approx) == 4:#a sudoku puzzle is a square, and a square has four corners
                #if a contour has the largest area, and has 4 corners, we know that the contour is the puzzle
                biggest = approx
                maxArea = area
    #finally we will have found the puzzle
    return biggest, maxArea
            
#spliting the image
def splitBoxes(img):
    # (h,w) = img.shape[0], img.shape[1]
    # centerX, centerY = w // 9, h // 9
    
    # boxes = []
    
    # for i in range(9):
    #     for j in range(9):
    #         box = img[centerY*i:centerY*(i+1), centerX*j:centerX*(j+1)]
    #         boxes.append(box)
    
    rows = np.vsplit(img, 9)
    boxes = []
    for r in rows:
        cols = np.hsplit(r, 9)
        for box in cols:
            boxes.append(box)
    return boxes

#predicting the number in each box
def getPrediction(boxes, model):
    result = []
    for image in boxes:
        img = np.asarray(image)
        img = img[4:img.shape[0]-4, 4:img.shape[1]-4]
        img = cv2.resize(img, (28,28))
        img = img/255
        img = img.reshape(1,28,28,1)
        predictions = model.predict(img)
        classIndex = np.argmax(predictions,axis=-1)
        probabilityValue = np.amax(predictions)
        print(classIndex, probabilityValue)
        if probabilityValue > .8:
            result.append(classIndex[0])
        else:
            result.append(0)
    return result

def displayNumbers(img, numbers, color=(0,255,0)):
    secW = int(img.shape[1]/9)
    secH = int(img.shape[0]/9)
    for x in range(9):
        for y in range(9):
            if numbers[(y*9)+x] != 0 :
                cv2.putText(img, str(numbers[(y*9)+x]), (x*secW+int(secW/2)-10, int((y+.8)*secH)), cv2.FONT_HERSHEY_COMPLEX, 2, color, 2, cv2.LINE_AA)
    return img
            
def stackImages(imgArr, scale):
    rows = len(imgArr)#get number of rows
    cols = len(imgArr[0])#get number of columns
    rowsAvailable = isinstance(imgArr[0], list)#tells us if imgArr[0] is a list or not, it tells us whether imgArr is a 2d array or not
    width = imgArr[0][0].shape[1]#getting the shape of the image to attain its width
    height = imgArr[0][0].shape[0]#getting the shape of the image to attain its height
    if rowsAvailable:#if imgArr is a 2d array then perform the following:
        for i in range (0, rows): #for the number of rows
            for j in range (0, cols): #for the number of cols
                imgArr[i][j] = cv2.resize(imgArr[i][j], (0, 0), None, scale, scale)#resizes the image by resizing the height and width of the image to the required scale
                if len(imgArr[i][j].shape) == 2: #if image has height and width?
                    imgArr[i][j] = cv2.cvtColor(imgArr[i][j], cv2.COLOR_GRAY2BGR)#make sure the image is not grayscaled
        imgBlank = np.zeros((height, width, 3), np.uint8)#zeros takes the shape and data type and returns a new array using those parameters
        hor = [imgBlank]*rows
        horCon = [imgBlank]*rows
        for i in range(0, rows):#using this forloop we go through all the arrays int he imgArr and using np.hstack and np.concatenate, we produce the stack of images as promised
            hor[i] = np.hstack(imgArr[i])#hstack takes in a tuple of arrays that have to be stacked. It stacks the sequence of arrays column wise
            horCon[i] = np.concatenate(imgArr[i])#mergest the sequence of arrays together
        ver = np.vstack(hor)#vstack takes in a sequence of arrays and stacks them, rows wise 
        verCon = np.concatenate(hor)#merges the sequence of arrays 
    else:#if imgArr is not a 2D array
        for i in range(0, rows):#go through the array, take each image, resize it, change its color and add it to the horizontal stack. We do not need a vertical stack as there are no two columns
            imgArr[i] = cv2.resize(imgArr[i], (0,0), None, scale, scale)
            if len(imgArr[i].shape) == 2:
                imgArr[i] = cv2.cvtColor(imgArr[i], cv2.COLOR_GRAY2BGR)
            hor = np.hstack(imgArr)
            horCon = np.concatenate(imgArr)
            ver = hor
            
    return ver