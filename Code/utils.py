import cv2
import numpy as np
from torch import imag, isin

def preProcess(img):
    gray = cv2.cvtColor(img, cv2.COLOR_BGR2GRAY) #grayscales the image
    blur = cv2.GaussianBlur(gray, (5, 5), 1) #blurs the image
    threshold = cv2.adaptiveThreshold(blur, 255, 1, 1, 11, 2) #applies adaptive threshold
    return threshold


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