print('Setting Up')
import enum
from itertools import zip_longest
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
    # indices = []
    # for i in range(1,82):
    #     indices.append(str(i))
    # val = []
    # for i in range(1,82):
    #     val.append('value')

    # d = dict(zip_longest(indices, val))
    # print(d)
    # for i in range(1,82):
    #     d[str(i)]['value'] = numbers2[i-1]
    numDict = {'1':{'val': numbers2[0]},'2':{'val': numbers2[1]},'3':{'val': numbers2[2]},'4':{'val': numbers2[3]},'5':{'val': numbers2[4]},'6':{'val': numbers2[5]},'7':{'val': numbers2[6]},'8':{'val': numbers2[7]},'9':{'val': numbers2[8]},'10':{'val': numbers2[9]},'11':{'val': numbers2[10]},'12':{'val': numbers2[11]},'13':{'val': numbers2[12]},'14':{'val': numbers2[13]},'15':{'val': numbers2[14]},'16':{'val': numbers2[15]},'17':{'val': numbers2[16]},'18':{'val': numbers2[17]},'19':{'val': numbers2[18]},'20':{'val': numbers2[19]},'21':{'val': numbers2[20]},'22':{'val': numbers2[21]},'23':{'val': numbers2[22]},'24':{'val': numbers2[23]},'25':{'val': numbers2[24]},'26':{'val': numbers2[25]},'27':{'val': numbers2[26]},'28':{'val': numbers2[27]},'29':{'val': numbers2[28]},'30':{'val': numbers2[29]},'31':{'val': numbers2[30]},'32':{'val': numbers2[31]},'33':{'val': numbers2[32]},'34':{'val': numbers2[33]},'35':{'val': numbers2[34]},'36':{'val': numbers2[35]},'37':{'val': numbers2[36]},'38':{'val': numbers2[37]},'39':{'val': numbers2[38]},'40':{'val': numbers2[39]},'41':{'val': numbers2[40]},'42':{'val': numbers2[41]},'43':{'val': numbers2[42]},'44':{'val': numbers2[43]},'45':{'val': numbers2[44]},'46':{'val': numbers2[45]},'47':{'val': numbers2[46]},'48':{'val': numbers2[47]},'49':{'val': numbers2[48]},'50':{'val': numbers2[49]},'51':{'val': numbers2[50]},'52':{'val': numbers2[51]},'53':{'val': numbers2[52]},'54':{'val': numbers2[53]},'55':{'val': numbers2[54]},'56':{'val': numbers2[55]},'57':{'val': numbers2[56]},'58':{'val': numbers2[57]},'59':{'val': numbers2[58]},'60':{'val': numbers2[59]},'61':{'val': numbers2[60]},'62':{'val': numbers2[61]},'63':{'val': numbers2[62]},'64':{'val': numbers2[63]},'65':{'val': numbers2[64]},'66':{'val': numbers2[65]},'67':{'val': numbers2[66]},'68':{'val': numbers2[67]},'69':{'val': numbers2[68]},'70':{'val': numbers2[69]},'71':{'val': numbers2[70]},'72':{'val': numbers2[71]},'73':{'val': numbers2[72]},'74':{'val': numbers2[73]},'75':{'val': numbers2[74]},'76':{'val': numbers2[75]},'77':{'val': numbers2[76]},'78':{'val': numbers2[77]},'79':{'val': numbers2[78]},'80':{'val': numbers2[79]},'81':{'val': numbers2[80]}}
    print(numDict)
    return numDict

    def app_running2():
        
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
# imgArr = ([img, imgThreshold, imgContours, imgBigContours],
#         [imgDetectedDigits, imgSolvedDigits, imgInvWarpColored, invPerspective])
# stackedImage = stackImages(imgArr, 1)

# plt.imshow(stackedImage, cmap = 'gray', interpolation='bicubic')
# plt.xticks([]), plt.yticks([])
# plt.show()
    
