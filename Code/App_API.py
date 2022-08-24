from fileinput import filename
import json
from operator import imod
import re
import sys
from flask import Flask, request, jsonify, json
import werkzeug
import numpy as np

from sudokuOCR import app_running



app = Flask(__name__)
board1 = []

@app.route('/upload', methods=["POST", "GET"])
def upload():
    global board1
    if(request.method == "POST"):
        imagefile = request.files['image']
        filename = werkzeug.utils.secure_filename(imagefile.filename)
        imagefile.save("./Code/uploadedimages/"+filename)
        board1 = app_running("./Code/uploadedimages/"+filename)
        return jsonify({
            "message": "Image Uploaded Successfully"
        })
    if(request.method == "GET"):
        return jsonify({'val':board1[0], 'val2':board1[1], 'val3':board1[2], 'val4':board1[3], 'val5':board1[4], 'val6':board1[5], 'val7':board1[6], 'val8':board1[7], 'val9':board1[8], 'val10':board1[9], 'val11':board1[10], 'val12':board1[11], 'val13':board1[12], 'val14':board1[13], 'val15':board1[14], 'val16':board1[15], 'val17':board1[16], 'val18':board1[17], 'val19':board1[18], 'val20':board1[19], 'val21':board1[20], 'val22':board1[21], 'val23':board1[22], 'val24':board1[23], 'val25':board1[24], 'val26':board1[25], 'val27':board1[26], 'val28':board1[27], 'val29':board1[28], 'val30':board1[29], 'val31':board1[30], 'val32':board1[31], 'val33':board1[32], 'val34':board1[33], 'val35':board1[34], 'val36':board1[35], 'val37':board1[36], 'val38':board1[37], 'val39':board1[38], 'val40':board1[39], 'val41':board1[40], 'val42':board1[41], 'val43':board1[42], 'val44':board1[43], 'val45':board1[44], 'val46':board1[45], 'val47':board1[46], 'val48':board1[47], 'val49':board1[48], 'val50':board1[49], 'val51':board1[50], 'val52':board1[51], 'val53':board1[52], 'val54':board1[53], 'val55':board1[54], 'val56':board1[55], 'val57':board1[56], 'val58':board1[57], 'val59':board1[58], 'val60':board1[59], 'val61':board1[60], 'val62':board1[61],'val63':board1[62], 'val64':board1[63], 'val65':board1[64], 'val66':board1[65], 'val67':board1[66], 'val68':board1[67], 'val69':board1[68], 'val70':board1[69],'val71':board1[70], 'val72':board1[71], 'val73':board1[72], 'val74':board1[73], 'val75':board1[74], 'val76':board1[75], 'val77':board1[76], 'val78':board1[77], 'val79':board1[78], 'val80':board1[79], 'val81':board1[80]})
if __name__ == '__main__':
    app.run(debug=True, port=4000)