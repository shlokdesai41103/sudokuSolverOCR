#load the libraries you need, they'll be obvious as you write the rest of this code
from turtle import pu
import os
import cv2
import numpy as np
import matplotlib.pyplot as plt
#split your data set of images into training, validation (80:20)
#40 images are training, 10 images are validation
# puzzle1 = 'Puzzles\Puzzle1.jpg'
# p1 = cv2.imread(puzzle1)
puzzle2 = 'Puzzles\Puzzle2.jpg'
p2 = cv2.imread(puzzle2)
puzzle4 = 'Puzzles\Puzzle4.jpg'
p4 = cv2.imread("Puzzles\Puzzle4.JPG")
puzzle5 = 'Puzzles\Puzzle5.jpg'
p5 = cv2.imread(puzzle5)
puzzle6 = 'Puzzles\Puzzle6.jpg'
p6 = cv2.imread(puzzle6)
puzzle7 = 'Puzzles\Puzzle7.jpg'
p7 = cv2.imread(puzzle7)
puzzle8 = 'Puzzles\Puzzle8.jpg'
p8 = cv2.imread(puzzle8)
puzzle9 = 'Puzzles\Puzzle9.jpg'
p9 = cv2.imread(puzzle9)
puzzle10 = 'Puzzles\Puzzle10.jpg'
p10 = cv2.imread(puzzle10)
puzzle11 = 'Puzzles\Puzzle11.jpg'
p11 = cv2.imread(puzzle11)
puzzle12 = 'Puzzles\Puzzle12.jpg'
p12 = cv2.imread(puzzle12)
puzzle13 = 'Puzzles\Puzzle13.jpg'
p13 = cv2.imread(puzzle13)
puzzle14 = 'Puzzles\Puzzle14.jpg'
p14 = cv2.imread(puzzle14)
puzzle15 = 'Puzzles\Puzzle15.jpg'
p15 = cv2.imread(puzzle15)
puzzle16 = 'Puzzles\Puzzle16.jpg'
p16 = cv2.imread(puzzle16)
puzzle17 = 'Puzzles\Puzzle17.jpg'
p17 = cv2.imread(puzzle17)
puzzle18 = 'Puzzles\Puzzle18.jpg'
p18 = cv2.imread(puzzle18)
puzzle19 = 'Puzzles\Puzzle19.jpg'
p19 = cv2.imread(puzzle19)
puzzle20 = 'Puzzles\Puzzle20.jpg'
p20 = cv2.imread(puzzle20)
puzzle21 = 'Puzzles\Puzzle21.jpg'
p21 = cv2.imread(puzzle21)
puzzle22 = 'Puzzles\Puzzle22.jpg'
p22 = cv2.imread(puzzle22)
puzzle23 = 'Puzzles\Puzzle23.jpg'
p23 = cv2.imread(puzzle23)
puzzle24 = 'Puzzles\Puzzle24.jpg'
p24 = cv2.imread(puzzle24)
puzzle25 = 'Puzzles\Puzzle25.jpg'
p25 = cv2.imread(puzzle25)
puzzle26 = 'Puzzles\Puzzle26.jpg'
p26 = cv2.imread(puzzle26)
puzzle27 = 'Puzzles\Puzzle27.jpg'
p27 = cv2.imread(puzzle27)
puzzle28 = 'Puzzles\Puzzle28.jpg'
p28 = cv2.imread(puzzle28)
puzzle29 = 'Puzzles\Puzzle29.jpg'
p29 = cv2.imread(puzzle29)
puzzle30 = 'Puzzles\Puzzle30.jpg'
p30 = cv2.imread(puzzle30)
puzzle31 = 'Puzzles\Puzzle31.jpg'
p31 = cv2.imread(puzzle31)
puzzle32 = 'Puzzles\Puzzle32.jpg'
p32 = cv2.imread(puzzle32)
puzzle33 = 'Puzzles\Puzzle33.jpg'
p33 = cv2.imread(puzzle33)
puzzle34 = 'Puzzles\Puzzle34.jpg'
p34 = cv2.imread(puzzle34)
puzzle35 = 'Puzzles\Puzzle35.jpg'
p35 = cv2.imread(puzzle35)
puzzle36 = 'Puzzles\Puzzle36.jpg'
p36 = cv2.imread(puzzle36)
puzzle37 = 'Puzzles\Puzzle37.jpg'
p37 = cv2.imread(puzzle37)
puzzle38 = 'Puzzles\Puzzle38.jpg'
p38 = cv2.imread(puzzle38)
puzzle39 = 'Puzzles\Puzzle39.jpg'
p39 = cv2.imread(puzzle39)
puzzle40 = 'Puzzles\Puzzle40.jpg'
p40 = cv2.imread(puzzle40)
puzzle41 = 'Puzzles\Puzzle41.jpg'
p41 = cv2.imread(puzzle41)
puzzle42 = 'Puzzles\Puzzle42.jpg'
p42 = cv2.imread(puzzle42)
puzzle43 = 'Puzzles\Puzzle43.jpg'
p43 = cv2.imread(puzzle43)
puzzle44 = 'Puzzles\Puzzle44.jpg'
p44 = cv2.imread(puzzle44)
puzzle45 = 'Puzzles\Puzzle45.jpg'
p45 = cv2.imread(puzzle45)
puzzle46 = 'Puzzles\Puzzle46.jpg'
p46 = cv2.imread(puzzle46)
puzzle47 = 'Puzzles\Puzzle47.jpg'
p47 = cv2.imread(puzzle47)
puzzle48 = 'Puzzles\Puzzle48.jpg'
p48 = cv2.imread(puzzle48)
puzzle49 = 'Puzzles\Puzzle49.jpg'
p49 = cv2.imread(puzzle49)
puzzle50 = 'Puzzles\Puzzle50.jpg'
p50 = cv2.imread(puzzle50)
training = [p2, p4, p5, p6, p7, p8, p9, p10, p11, p12, p13, p14, p15, p16, p17, p18, p19, p20, p21, p22, p23, p24, p25, p26, p27, p28, p29, p30, p31, p32, p33, p34, p35, p36, p37, p38, p39, p40]
validation = [p41, p42, p43, p44, p45, p46, p47, p48, p49, p50]
imgH = 450
imgW = 450

for i in range(len(training)):
    training[i] = cv2.resize(training[i], (imgW, imgH))

for i in range(len(validation)):
    validation[i] = cv2.resize(validation[i], (imgW, imgH))

#run your algorithm that finds the bounding boxes of each picture, then using simple geometry,
#you can get your 81 squares, save each of these squares into a new folder, (keep training and val separate still)
(x,y) = 450, 450
centerX, centerY = x // 9, y // 9
count = 0
for img in range(len(training)):
    
    for i in range(9):
        for j in range(9):
            count += 1
            box = training[img][centerY*i:centerY*(i+1), centerX*j:centerX*(j+1)]
            plt.imshow(box, cmap = 'gray', interpolation='bicubic')
            plt.xticks([]), plt.yticks([])
            plt.savefig("box%d.jpg"%count)
            # cv2.imwrite(os.path.join("OCR Model\Data2\Training" , 'box%d.jpg'%count), img)

for img in range(len(validation)):
    count+=1
    for i in range(9):
        for j in range(9):
            box = training[img][centerY*i:centerY*(i+1), centerX*j:centerX*(j+1)]
            plt.imshow(box, cmap = 'gray', interpolation='bicubic')
            plt.xticks([]), plt.yticks([])
            plt.savefig("box%d.jpg"%count)
            # cv2.imwrite(os.path.join("OCR Model\Data2\Validating" , 'box%d.jpg'%count), img)

#manually put each picture into a subfolder (blank,1,2,3,4,5,6,7,8,9)

#at this point you should have a training_final and validation_final, each with (blank,1,2,3,4,5,6,7,8,9) subfolders

