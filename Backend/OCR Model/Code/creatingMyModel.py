import numpy as np
import matplotlib.pyplot as plt
import cv2
import tensorflow as tf
import os

data = os.listdir("OCR Model\Data2\Training")
data_X = []
data_Y = []
dataClasses = len(data)
for i in range(0, dataClasses):
    dataList = os.listdir("OCR Model\Data2\Training"+"/"+str(i))
    for j in dataList:
        img = cv2.imread("OCR Model\Data2\Training"+"/"+str(i)+"/"+j)
        img = cv2.resize(img, (32,32))
        data_X.append(img)
        
    data_Y.append(i)
    
if len(data_X) == len(data_Y):
    print("Total Datapoints = ", len(data_X))
data_X = np.array(data_X)