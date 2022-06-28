from matplotlib import path
import numpy as np
import cv2
import os

path = 'OCR Model\Data'

myList = os.listdir(path)
print(myList)
noClasses = len(myList)