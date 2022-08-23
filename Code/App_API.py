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
board1 = {}

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
        return board1
if __name__ == '__main__':
    app.run(debug=True, port=4000)