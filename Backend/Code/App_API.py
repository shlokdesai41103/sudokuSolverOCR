from base64 import decode
from fileinput import filename
import json
from operator import imod
import re
import sys
from flask import Flask, request, jsonify, json
import werkzeug
import numpy as np
from sudokuOCR import app_running2

from sudokuOCR import app_running



app = Flask(__name__)
board1 = []
board2 = []
board5 = []
solved = False

@app.route('/upload', methods=["POST", "GET"])
def upload():
    global board1
    if(request.method == "POST"):
        imagefile = request.files['image']
        filename = werkzeug.utils.secure_filename(imagefile.filename)
        imagefile.save("./Backend/Code/uploadedimages/"+filename)
        board1 = app_running("./Backend/Code/uploadedimages/"+filename)
        return jsonify({
            "message": "Image Uploaded Successfully"
        })
    if(request.method == "GET"):
        return jsonify({'val':board1[0], 'val2':board1[1], 'val3':board1[2], 'val4':board1[3], 'val5':board1[4], 'val6':board1[5], 'val7':board1[6], 'val8':board1[7], 'val9':board1[8], 'val10':board1[9], 'val11':board1[10], 'val12':board1[11], 'val13':board1[12], 'val14':board1[13], 'val15':board1[14], 'val16':board1[15], 'val17':board1[16], 'val18':board1[17], 'val19':board1[18], 'val20':board1[19], 'val21':board1[20], 'val22':board1[21], 'val23':board1[22], 'val24':board1[23], 'val25':board1[24], 'val26':board1[25], 'val27':board1[26], 'val28':board1[27], 'val29':board1[28], 'val30':board1[29], 'val31':board1[30], 'val32':board1[31], 'val33':board1[32], 'val34':board1[33], 'val35':board1[34], 'val36':board1[35], 'val37':board1[36], 'val38':board1[37], 'val39':board1[38], 'val40':board1[39], 'val41':board1[40], 'val42':board1[41], 'val43':board1[42], 'val44':board1[43], 'val45':board1[44], 'val46':board1[45], 'val47':board1[46], 'val48':board1[47], 'val49':board1[48], 'val50':board1[49], 'val51':board1[50], 'val52':board1[51], 'val53':board1[52], 'val54':board1[53], 'val55':board1[54], 'val56':board1[55], 'val57':board1[56], 'val58':board1[57], 'val59':board1[58], 'val60':board1[59], 'val61':board1[60], 'val62':board1[61],'val63':board1[62], 'val64':board1[63], 'val65':board1[64], 'val66':board1[65], 'val67':board1[66], 'val68':board1[67], 'val69':board1[68], 'val70':board1[69],'val71':board1[70], 'val72':board1[71], 'val73':board1[72], 'val74':board1[73], 'val75':board1[74], 'val76':board1[75], 'val77':board1[76], 'val78':board1[77], 'val79':board1[78], 'val80':board1[79], 'val81':board1[80]})
    
@app.route('/upload2', methods=["POST", "GET"])
def upload2():
    global board1
    global board2
    global solved
    if (request.method == "POST"):
        board2= []
        request_data = request.data
        decoded = json.loads(request_data.decode('utf-8'))
        board2.append(decoded['val1'])
        board2.append(decoded['val2'])
        board2.append(decoded['val3'])
        board2.append(decoded['val4'])
        board2.append(decoded['val5'])
        board2.append(decoded['val6'])
        board2.append(decoded['val7'])
        board2.append(decoded['val8'])
        board2.append(decoded['val9'])
        board2.append(decoded['val10'])
        board2.append(decoded['val11'])
        board2.append(decoded['val12'])
        board2.append(decoded['val13'])
        board2.append(decoded['val14'])
        board2.append(decoded['val15'])
        board2.append(decoded['val16'])
        board2.append(decoded['val17'])
        board2.append(decoded['val18'])
        board2.append(decoded['val19'])
        board2.append(decoded['val20'])
        board2.append(decoded['val21'])
        board2.append(decoded['val22'])
        board2.append(decoded['val23'])
        board2.append(decoded['val24'])
        board2.append(decoded['val25'])
        board2.append(decoded['val26'])
        board2.append(decoded['val27'])
        board2.append(decoded['val28'])
        board2.append(decoded['val29'])
        board2.append(decoded['val30'])
        board2.append(decoded['val31'])
        board2.append(decoded['val32'])
        board2.append(decoded['val33'])
        board2.append(decoded['val34'])
        board2.append(decoded['val35'])
        board2.append(decoded['val36'])
        board2.append(decoded['val37'])
        board2.append(decoded['val38'])
        board2.append(decoded['val39'])
        board2.append(decoded['val40'])
        board2.append(decoded['val41'])
        board2.append(decoded['val42'])
        board2.append(decoded['val43'])
        board2.append(decoded['val44'])
        board2.append(decoded['val45'])
        board2.append(decoded['val46'])
        board2.append(decoded['val47'])
        board2.append(decoded['val48'])
        board2.append(decoded['val49'])
        board2.append(decoded['val50'])
        board2.append(decoded['val51'])
        board2.append(decoded['val52'])
        board2.append(decoded['val53'])
        board2.append(decoded['val54'])
        board2.append(decoded['val55'])
        board2.append(decoded['val56'])
        board2.append(decoded['val57'])
        board2.append(decoded['val58'])
        board2.append(decoded['val59'])
        board2.append(decoded['val60'])
        board2.append(decoded['val61'])
        board2.append(decoded['val62'])
        board2.append(decoded['val63'])
        board2.append(decoded['val64'])
        board2.append(decoded['val65'])
        board2.append(decoded['val66'])
        board2.append(decoded['val67'])
        board2.append(decoded['val68'])
        board2.append(decoded['val69'])
        board2.append(decoded['val70'])
        board2.append(decoded['val71'])
        board2.append(decoded['val72'])
        board2.append(decoded['val73'])
        board2.append(decoded['val74'])
        board2.append(decoded['val75'])
        board2.append(decoded['val76'])
        board2.append(decoded['val77'])
        board2.append(decoded['val78'])
        board2.append(decoded['val79'])
        board2.append(decoded['val80'])
        board2.append(decoded['val81'])
        print(board2[0])
        returnedTuple = app_running2(board2)
        board2 = returnedTuple[0]
        solved = returnedTuple[1]
        return jsonify({"message": "List Uploaded Successfuly"})
    if (request.method == "GET"):
        if solved == False:
            return jsonify({'val':board2[0], 'val2':board2[1], 'val3':board2[2], 'val4':board2[3], 'val5':board2[4], 'val6':board2[5], 'val7':board2[6], 'val8':board2[7], 'val9':board2[8], 'val10':board2[9], 'val11':board2[10], 'val12':board2[11], 'val13':board2[12], 'val14':board2[13], 'val15':board2[14], 'val16':board2[15], 'val17':board2[16], 'val18':board2[17], 'val19':board2[18], 'val20':board2[19], 'val21':board2[20], 'val22':board2[21], 'val23':board2[22], 'val24':board2[23], 'val25':board2[24], 'val26':board2[25], 'val27':board2[26], 'val28':board2[27], 'val29':board2[28], 'val30':board2[29], 'val31':board2[30], 'val32':board2[31], 'val33':board2[32], 'val34':board2[33], 'val35':board2[34], 'val36':board2[35], 'val37':board2[36], 'val38':board2[37], 'val39':board2[38], 'val40':board2[39], 'val41':board2[40], 'val42':board2[41], 'val43':board2[42], 'val44':board2[43], 'val45':board2[44], 'val46':board2[45], 'val47':board2[46], 'val48':board2[47], 'val49':board2[48], 'val50':board2[49], 'val51':board2[50], 'val52':board2[51], 'val53':board2[52], 'val54':board2[53], 'val55':board2[54], 'val56':board2[55], 'val57':board2[56], 'val58':board2[57], 'val59':board2[58], 'val60':board2[59], 'val61':board2[60], 'val62':board2[61],'val63':board2[62], 'val64':board2[63], 'val65':board2[64], 'val66':board2[65], 'val67':board2[66], 'val68':board2[67], 'val69':board2[68], 'val70':board2[69],'val71':board2[70], 'val72':board2[71], 'val73':board2[72], 'val74':board2[73], 'val75':board2[74], 'val76':board2[75], 'val77':board2[76], 'val78':board2[77], 'val79':board2[78], 'val80':board2[79], 'val81':board2[80], 'message':"Un-Solvable Puzzle"})
        else:
            return jsonify({'val':board2[0], 'val2':board2[1], 'val3':board2[2], 'val4':board2[3], 'val5':board2[4], 'val6':board2[5], 'val7':board2[6], 'val8':board2[7], 'val9':board2[8], 'val10':board2[9], 'val11':board2[10], 'val12':board2[11], 'val13':board2[12], 'val14':board2[13], 'val15':board2[14], 'val16':board2[15], 'val17':board2[16], 'val18':board2[17], 'val19':board2[18], 'val20':board2[19], 'val21':board2[20], 'val22':board2[21], 'val23':board2[22], 'val24':board2[23], 'val25':board2[24], 'val26':board2[25], 'val27':board2[26], 'val28':board2[27], 'val29':board2[28], 'val30':board2[29], 'val31':board2[30], 'val32':board2[31], 'val33':board2[32], 'val34':board2[33], 'val35':board2[34], 'val36':board2[35], 'val37':board2[36], 'val38':board2[37], 'val39':board2[38], 'val40':board2[39], 'val41':board2[40], 'val42':board2[41], 'val43':board2[42], 'val44':board2[43], 'val45':board2[44], 'val46':board2[45], 'val47':board2[46], 'val48':board2[47], 'val49':board2[48], 'val50':board2[49], 'val51':board2[50], 'val52':board2[51], 'val53':board2[52], 'val54':board2[53], 'val55':board2[54], 'val56':board2[55], 'val57':board2[56], 'val58':board2[57], 'val59':board2[58], 'val60':board2[59], 'val61':board2[60], 'val62':board2[61],'val63':board2[62], 'val64':board2[63], 'val65':board2[64], 'val66':board2[65], 'val67':board2[66], 'val68':board2[67], 'val69':board2[68], 'val70':board2[69],'val71':board2[70], 'val72':board2[71], 'val73':board2[72], 'val74':board2[73], 'val75':board2[74], 'val76':board2[75], 'val77':board2[76], 'val78':board2[77], 'val79':board2[78], 'val80':board2[79], 'val81':board2[80], 'message':"Solved Puzzle"})
if __name__ == '__main__':
    app.run(debug=True, host="0.0.0.0", port=4000)