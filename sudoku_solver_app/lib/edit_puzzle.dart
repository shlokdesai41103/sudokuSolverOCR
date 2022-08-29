import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:path/path.dart';
import 'package:http/http.dart' as http;

import 'loading.dart';

class EditPuzzle extends StatefulWidget {
  const EditPuzzle({Key? key}) : super(key: key);

  @override
  State<EditPuzzle> createState() => _EditPuzzleState();
}

class _EditPuzzleState extends State<EditPuzzle> {
  bool loading = false;
  bool solved = false;

  String number = '';
  String number2 = '';
  String number3 = '';
  String number4 = '';
  String number5 = '';
  String number6 = '';
  String number7 = '';
  String number8 = '';
  String number9 = '';
  String number10 = '';
  String number11 = '';
  String number12 = '';
  String number13 = '';
  String number14 = '';
  String number15 = '';
  String number16 = '';
  String number17 = '';
  String number18 = '';
  String number19 = '';
  String number20 = '';
  String number21 = '';
  String number22 = '';
  String number23 = '';
  String number24 = '';
  String number25 = '';
  String number26 = '';
  String number27 = '';
  String number28 = '';
  String number29 = '';
  String number30 = '';
  String number31 = '';
  String number32 = '';
  String number33 = '';
  String number34 = '';
  String number35 = '';
  String number36 = '';
  String number37 = '';
  String number38 = '';
  String number39 = '';
  String number40 = '';
  String number41 = '';
  String number42 = '';
  String number43 = '';
  String number44 = '';
  String number45 = '';
  String number46 = '';
  String number47 = '';
  String number48 = '';
  String number49 = '';
  String number50 = '';
  String number51 = '';
  String number52 = '';
  String number53 = '';
  String number54 = '';
  String number55 = '';
  String number56 = '';
  String number57 = '';
  String number58 = '';
  String number59 = '';
  String number60 = '';
  String number61 = '';
  String number62 = '';
  String number63 = '';
  String number64 = '';
  String number65 = '';
  String number66 = '';
  String number67 = '';
  String number68 = '';
  String number69 = '';
  String number70 = '';
  String number71 = '';
  String number72 = '';
  String number73 = '';
  String number74 = '';
  String number75 = '';
  String number76 = '';
  String number77 = '';
  String number78 = '';
  String number79 = '';
  String number80 = '';
  String number81 = '';

  String n1 = '';
  String n2 = '';
  String n3 = '';
  String n4 = '';
  String n5 = '';
  String n6 = '';
  String n7 = '';
  String n8 = '';
  String n9 = '';
  String n10 = '';
  String n11 = '';
  String n12 = '';
  String n13 = '';
  String n14 = '';
  String n15 = '';
  String n16 = '';
  String n17 = '';
  String n18 = '';
  String n19 = '';
  String n20 = '';
  String n21 = '';
  String n22 = '';
  String n23 = '';
  String n24 = '';
  String n25 = '';
  String n26 = '';
  String n27 = '';
  String n28 = '';
  String n29 = '';
  String n30 = '';
  String n31 = '';
  String n32 = '';
  String n33 = '';
  String n34 = '';
  String n35 = '';
  String n36 = '';
  String n37 = '';
  String n38 = '';
  String n39 = '';
  String n40 = '';
  String n41 = '';
  String n42 = '';
  String n43 = '';
  String n44 = '';
  String n45 = '';
  String n46 = '';
  String n47 = '';
  String n48 = '';
  String n49 = '';
  String n50 = '';
  String n51 = '';
  String n52 = '';
  String n53 = '';
  String n54 = '';
  String n55 = '';
  String n56 = '';
  String n57 = '';
  String n58 = '';
  String n59 = '';
  String n60 = '';
  String n61 = '';
  String n62 = '';
  String n63 = '';
  String n64 = '';
  String n65 = '';
  String n66 = '';
  String n67 = '';
  String n68 = '';
  String n69 = '';
  String n70 = '';
  String n71 = '';
  String n72 = '';
  String n73 = '';
  String n74 = '';
  String n75 = '';
  String n76 = '';
  String n77 = '';
  String n78 = '';
  String n79 = '';
  String n80 = '';
  String n81 = '';

  TextEditingController ctrl1 = TextEditingController();
  TextEditingController ctrl2 = TextEditingController();
  TextEditingController ctrl3 = TextEditingController();
  TextEditingController ctrl4 = TextEditingController();
  TextEditingController ctrl5 = TextEditingController();
  TextEditingController ctrl6 = TextEditingController();
  TextEditingController ctrl7 = TextEditingController();
  TextEditingController ctrl8 = TextEditingController();
  TextEditingController ctrl9 = TextEditingController();
  TextEditingController ctrl10 = TextEditingController();
  TextEditingController ctrl11 = TextEditingController();
  TextEditingController ctrl12 = TextEditingController();
  TextEditingController ctrl13 = TextEditingController();
  TextEditingController ctrl14 = TextEditingController();
  TextEditingController ctrl15 = TextEditingController();
  TextEditingController ctrl16 = TextEditingController();
  TextEditingController ctrl17 = TextEditingController();
  TextEditingController ctrl18 = TextEditingController();
  TextEditingController ctrl19 = TextEditingController();
  TextEditingController ctrl20 = TextEditingController();
  TextEditingController ctrl21 = TextEditingController();
  TextEditingController ctrl22 = TextEditingController();
  TextEditingController ctrl23 = TextEditingController();
  TextEditingController ctrl24 = TextEditingController();
  TextEditingController ctrl25 = TextEditingController();
  TextEditingController ctrl26 = TextEditingController();
  TextEditingController ctrl27 = TextEditingController();
  TextEditingController ctrl28 = TextEditingController();
  TextEditingController ctrl29 = TextEditingController();
  TextEditingController ctrl30 = TextEditingController();
  TextEditingController ctrl31 = TextEditingController();
  TextEditingController ctrl32 = TextEditingController();
  TextEditingController ctrl33 = TextEditingController();
  TextEditingController ctrl34 = TextEditingController();
  TextEditingController ctrl35 = TextEditingController();
  TextEditingController ctrl36 = TextEditingController();
  TextEditingController ctrl37 = TextEditingController();
  TextEditingController ctrl38 = TextEditingController();
  TextEditingController ctrl39 = TextEditingController();
  TextEditingController ctrl40 = TextEditingController();
  TextEditingController ctrl41 = TextEditingController();
  TextEditingController ctrl42 = TextEditingController();
  TextEditingController ctrl43 = TextEditingController();
  TextEditingController ctrl44 = TextEditingController();
  TextEditingController ctrl45 = TextEditingController();
  TextEditingController ctrl46 = TextEditingController();
  TextEditingController ctrl47 = TextEditingController();
  TextEditingController ctrl48 = TextEditingController();
  TextEditingController ctrl49 = TextEditingController();
  TextEditingController ctrl50 = TextEditingController();
  TextEditingController ctrl51 = TextEditingController();
  TextEditingController ctrl52 = TextEditingController();
  TextEditingController ctrl53 = TextEditingController();
  TextEditingController ctrl54 = TextEditingController();
  TextEditingController ctrl55 = TextEditingController();
  TextEditingController ctrl56 = TextEditingController();
  TextEditingController ctrl57 = TextEditingController();
  TextEditingController ctrl58 = TextEditingController();
  TextEditingController ctrl59 = TextEditingController();
  TextEditingController ctrl60 = TextEditingController();
  TextEditingController ctrl61 = TextEditingController();
  TextEditingController ctrl62 = TextEditingController();
  TextEditingController ctrl63 = TextEditingController();
  TextEditingController ctrl64 = TextEditingController();
  TextEditingController ctrl65 = TextEditingController();
  TextEditingController ctrl66 = TextEditingController();
  TextEditingController ctrl67 = TextEditingController();
  TextEditingController ctrl68 = TextEditingController();
  TextEditingController ctrl69 = TextEditingController();
  TextEditingController ctrl70 = TextEditingController();
  TextEditingController ctrl71 = TextEditingController();
  TextEditingController ctrl72 = TextEditingController();
  TextEditingController ctrl73 = TextEditingController();
  TextEditingController ctrl74 = TextEditingController();
  TextEditingController ctrl75 = TextEditingController();
  TextEditingController ctrl76 = TextEditingController();
  TextEditingController ctrl77 = TextEditingController();
  TextEditingController ctrl78 = TextEditingController();
  TextEditingController ctrl79 = TextEditingController();
  TextEditingController ctrl80 = TextEditingController();
  TextEditingController ctrl81 = TextEditingController();

  String setNumber(value, text) {
    if (text == '') {
      return value;
    } else {
      return text;
    }
  }

  void showToast(message) {
    Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.blue,
      textColor: Colors.white,
    );
  }

  // @override
  // void initState() {
  //   ctrl1 = TextEditingController(text: number);
  //   super.initState();
  // }

  @override
  void dispose() {
    ctrl1.dispose();
    ctrl2.dispose();
    ctrl3.dispose();
    ctrl4.dispose();
    ctrl5.dispose();
    ctrl6.dispose();
    ctrl7.dispose();
    ctrl8.dispose();
    ctrl9.dispose();
    ctrl10.dispose();
    ctrl11.dispose();
    ctrl12.dispose();
    ctrl13.dispose();
    ctrl14.dispose();
    ctrl15.dispose();
    ctrl16.dispose();
    ctrl17.dispose();
    ctrl18.dispose();
    ctrl19.dispose();
    ctrl20.dispose();
    ctrl21.dispose();
    ctrl22.dispose();
    ctrl23.dispose();
    ctrl24.dispose();
    ctrl25.dispose();
    ctrl26.dispose();
    ctrl27.dispose();
    ctrl28.dispose();
    ctrl29.dispose();
    ctrl30.dispose();
    ctrl31.dispose();
    ctrl32.dispose();
    ctrl33.dispose();
    ctrl34.dispose();
    ctrl35.dispose();
    ctrl36.dispose();
    ctrl37.dispose();
    ctrl38.dispose();
    ctrl39.dispose();
    ctrl40.dispose();
    ctrl41.dispose();
    ctrl42.dispose();
    ctrl43.dispose();
    ctrl44.dispose();
    ctrl45.dispose();
    ctrl46.dispose();
    ctrl1.dispose();
    ctrl47.dispose();
    ctrl48.dispose();
    ctrl49.dispose();
    ctrl50.dispose();
    ctrl51.dispose();
    ctrl52.dispose();
    ctrl53.dispose();
    ctrl54.dispose();
    ctrl55.dispose();
    ctrl56.dispose();
    ctrl57.dispose();
    ctrl58.dispose();
    ctrl59.dispose();
    ctrl60.dispose();
    ctrl61.dispose();
    ctrl62.dispose();
    ctrl63.dispose();
    ctrl64.dispose();
    ctrl65.dispose();
    ctrl66.dispose();
    ctrl67.dispose();
    ctrl68.dispose();
    ctrl69.dispose();
    ctrl70.dispose();
    ctrl71.dispose();
    ctrl72.dispose();
    ctrl73.dispose();
    ctrl74.dispose();
    ctrl75.dispose();
    ctrl76.dispose();
    ctrl77.dispose();
    ctrl78.dispose();
    ctrl79.dispose();
    ctrl80.dispose();
    ctrl81.dispose();
    ctrl1.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return loading
        ? const Loading()
        : Scaffold(
            appBar: AppBar(
              title: const Text('Sudoku Solver: Grid Editing'),
            ),
            body: Center(
              child: GridView.count(
                shrinkWrap: true,
                padding: const EdgeInsets.all(10),
                crossAxisCount: 9,
                crossAxisSpacing: 5,
                mainAxisSpacing: 5,
                children: [
                  TextField(
                    onChanged: (val) {
                      n1 = val;
                    },
                    controller: ctrl1..text = number,
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    maxLength: 1,
                    decoration: const InputDecoration(
                        filled: true,
                        fillColor: Colors.blue,
                        counterText: "",
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 5.0)),
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 2.0))),
                  ),
                  TextField(
                    onChanged: (val) {
                      n2 = val;
                    },
                    controller: ctrl2..text = number2,
                    style: const TextStyle(
                        fontSize: 24, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    maxLength: 1,
                    decoration: const InputDecoration(
                        filled: true,
                        fillColor: Colors.blue,
                        counterText: "",
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 5.0)),
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 2.0))),
                  ),
                  TextField(
                    onChanged: (val) {
                      n3 = val;
                    },
                    controller: ctrl3..text = number3,
                    style: const TextStyle(
                        fontSize: 24, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    maxLength: 1,
                    decoration: const InputDecoration(
                        filled: true,
                        fillColor: Colors.blue,
                        counterText: "",
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 5.0)),
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 2.0))),
                  ),
                  TextField(
                    onChanged: (val) {
                      n4 = val;
                    },
                    controller: ctrl4..text = number4,
                    style: const TextStyle(
                        fontSize: 24, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    maxLength: 1,
                    decoration: const InputDecoration(
                        filled: true,
                        fillColor: Colors.lightBlueAccent,
                        counterText: "",
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 5.0)),
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 2.0))),
                  ),
                  TextField(
                    onChanged: (val) {
                      n5 = val;
                    },
                    controller: ctrl5..text = number5,
                    style: const TextStyle(
                        fontSize: 24, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    maxLength: 1,
                    decoration: const InputDecoration(
                        filled: true,
                        fillColor: Colors.lightBlueAccent,
                        counterText: "",
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 5.0)),
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 2.0))),
                  ),
                  TextField(
                    onChanged: (val) {
                      n6 = val;
                    },
                    controller: ctrl6..text = number6,
                    style: const TextStyle(
                        fontSize: 24, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    maxLength: 1,
                    decoration: const InputDecoration(
                        filled: true,
                        fillColor: Colors.lightBlueAccent,
                        counterText: "",
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 5.0)),
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 2.0))),
                  ),
                  TextField(
                    onChanged: (val) {
                      n7 = val;
                    },
                    controller: ctrl7..text = number7,
                    style: const TextStyle(
                        fontSize: 24, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    maxLength: 1,
                    decoration: const InputDecoration(
                        filled: true,
                        fillColor: Colors.blue,
                        counterText: "",
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 5.0)),
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 2.0))),
                  ),
                  TextField(
                    onChanged: (val) {
                      n8 = val;
                    },
                    controller: ctrl8..text = number8,
                    style: const TextStyle(
                        fontSize: 24, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    maxLength: 1,
                    decoration: const InputDecoration(
                        filled: true,
                        fillColor: Colors.blue,
                        counterText: "",
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 5.0)),
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 2.0))),
                  ),
                  TextField(
                    onChanged: (val) {
                      n9 = val;
                    },
                    controller: ctrl9..text = number9,
                    style: const TextStyle(
                        fontSize: 24, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    maxLength: 1,
                    decoration: const InputDecoration(
                        filled: true,
                        fillColor: Colors.blue,
                        counterText: "",
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 5.0)),
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 2.0))),
                  ),
                  TextField(
                    onChanged: (val) {
                      n10 = val;
                    },
                    controller: ctrl10..text = number10,
                    style: const TextStyle(
                        fontSize: 24, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    maxLength: 1,
                    decoration: const InputDecoration(
                        filled: true,
                        fillColor: Colors.blue,
                        counterText: "",
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 5.0)),
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 2.0))),
                  ),
                  TextField(
                    onChanged: (val) {
                      n11 = val;
                    },
                    controller: ctrl11..text = number11,
                    style: const TextStyle(
                        fontSize: 24, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    maxLength: 1,
                    decoration: const InputDecoration(
                        filled: true,
                        fillColor: Colors.blue,
                        counterText: "",
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 5.0)),
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 2.0))),
                  ),
                  TextField(
                    onChanged: (val) {
                      n12 = val;
                    },
                    controller: ctrl12..text = number12,
                    style: const TextStyle(
                        fontSize: 24, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    maxLength: 1,
                    decoration: const InputDecoration(
                        filled: true,
                        fillColor: Colors.blue,
                        counterText: "",
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 5.0)),
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 2.0))),
                  ),
                  TextField(
                    onChanged: (val) {
                      n13 = val;
                    },
                    controller: ctrl13..text = number13,
                    style: const TextStyle(
                        fontSize: 24, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    maxLength: 1,
                    decoration: const InputDecoration(
                        filled: true,
                        fillColor: Colors.lightBlueAccent,
                        counterText: "",
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 5.0)),
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 2.0))),
                  ),
                  TextField(
                    onChanged: (val) {
                      n14 = val;
                    },
                    controller: ctrl14..text = number14,
                    style: const TextStyle(
                        fontSize: 24, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    maxLength: 1,
                    decoration: const InputDecoration(
                        filled: true,
                        fillColor: Colors.lightBlueAccent,
                        counterText: "",
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 5.0)),
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 2.0))),
                  ),
                  TextField(
                    onChanged: (val) {
                      n15 = val;
                    },
                    controller: ctrl15..text = number15,
                    style: const TextStyle(
                        fontSize: 24, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    maxLength: 1,
                    decoration: const InputDecoration(
                        filled: true,
                        fillColor: Colors.lightBlueAccent,
                        counterText: "",
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 5.0)),
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 2.0))),
                  ),
                  TextField(
                    onChanged: (val) {
                      n16 = val;
                    },
                    controller: ctrl16..text = number16,
                    style: const TextStyle(
                        fontSize: 24, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    maxLength: 1,
                    decoration: const InputDecoration(
                        filled: true,
                        fillColor: Colors.blue,
                        counterText: "",
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 5.0)),
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 2.0))),
                  ),
                  TextField(
                    onChanged: (val) {
                      n17 = val;
                    },
                    controller: ctrl17..text = number17,
                    style: const TextStyle(
                        fontSize: 24, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    maxLength: 1,
                    decoration: const InputDecoration(
                        filled: true,
                        fillColor: Colors.blue,
                        counterText: "",
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 5.0)),
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 2.0))),
                  ),
                  TextField(
                    onChanged: (val) {
                      n18 = val;
                    },
                    controller: ctrl18..text = number18,
                    style: const TextStyle(
                        fontSize: 24, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    maxLength: 1,
                    decoration: const InputDecoration(
                        filled: true,
                        fillColor: Colors.blue,
                        counterText: "",
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 5.0)),
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 2.0))),
                  ),
                  TextField(
                    onChanged: (val) {
                      n19 = val;
                    },
                    controller: ctrl19..text = number19,
                    style: const TextStyle(
                        fontSize: 24, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    maxLength: 1,
                    decoration: const InputDecoration(
                        filled: true,
                        fillColor: Colors.blue,
                        counterText: "",
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 5.0)),
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 2.0))),
                  ),
                  TextField(
                    onChanged: (val) {
                      n20 = val;
                    },
                    controller: ctrl20..text = number20,
                    style: const TextStyle(
                        fontSize: 24, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    maxLength: 1,
                    decoration: const InputDecoration(
                        filled: true,
                        fillColor: Colors.blue,
                        counterText: "",
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 5.0)),
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 2.0))),
                  ),
                  TextField(
                    onChanged: (val) {
                      n21 = val;
                    },
                    controller: ctrl21..text = number21,
                    style: const TextStyle(
                        fontSize: 24, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    maxLength: 1,
                    decoration: const InputDecoration(
                        filled: true,
                        fillColor: Colors.blue,
                        counterText: "",
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 5.0)),
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 2.0))),
                  ),
                  TextField(
                    onChanged: (val) {
                      n22 = val;
                    },
                    controller: ctrl22..text = number22,
                    style: const TextStyle(
                        fontSize: 24, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    maxLength: 1,
                    decoration: const InputDecoration(
                        filled: true,
                        fillColor: Colors.lightBlueAccent,
                        counterText: "",
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 5.0)),
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 2.0))),
                  ),
                  TextField(
                    onChanged: (val) {
                      n23 = val;
                    },
                    controller: ctrl23..text = number23,
                    style: const TextStyle(
                        fontSize: 24, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    maxLength: 1,
                    decoration: const InputDecoration(
                        filled: true,
                        fillColor: Colors.lightBlueAccent,
                        counterText: "",
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 5.0)),
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 2.0))),
                  ),
                  TextField(
                    onChanged: (val) {
                      n24 = val;
                    },
                    controller: ctrl24..text = number24,
                    style: const TextStyle(
                        fontSize: 24, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    maxLength: 1,
                    decoration: const InputDecoration(
                        filled: true,
                        fillColor: Colors.lightBlueAccent,
                        counterText: "",
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 5.0)),
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 2.0))),
                  ),
                  TextField(
                    onChanged: (val) {
                      n25 = val;
                    },
                    controller: ctrl25..text = number25,
                    style: const TextStyle(
                        fontSize: 24, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    maxLength: 1,
                    decoration: const InputDecoration(
                        filled: true,
                        fillColor: Colors.blue,
                        counterText: "",
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 5.0)),
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 2.0))),
                  ),
                  TextField(
                    onChanged: (val) {
                      n26 = val;
                    },
                    controller: ctrl26..text = number26,
                    style: const TextStyle(
                        fontSize: 24, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    maxLength: 1,
                    decoration: const InputDecoration(
                        filled: true,
                        fillColor: Colors.blue,
                        counterText: "",
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 5.0)),
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 2.0))),
                  ),
                  TextField(
                    onChanged: (val) {
                      n27 = val;
                    },
                    controller: ctrl27..text = number27,
                    style: const TextStyle(
                        fontSize: 24, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    maxLength: 1,
                    decoration: const InputDecoration(
                        filled: true,
                        fillColor: Colors.blue,
                        counterText: "",
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 5.0)),
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 2.0))),
                  ),
                  TextField(
                    onChanged: (val) {
                      n28 = val;
                    },
                    controller: ctrl28..text = number28,
                    style: const TextStyle(
                        fontSize: 24, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    maxLength: 1,
                    decoration: const InputDecoration(
                        filled: true,
                        fillColor: Colors.lightBlueAccent,
                        counterText: "",
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 5.0)),
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 2.0))),
                  ),
                  TextField(
                    onChanged: (val) {
                      n29 = val;
                    },
                    controller: ctrl29..text = number29,
                    style: const TextStyle(
                        fontSize: 24, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    maxLength: 1,
                    decoration: const InputDecoration(
                        filled: true,
                        fillColor: Colors.lightBlueAccent,
                        counterText: "",
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 5.0)),
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 2.0))),
                  ),
                  TextField(
                    onChanged: (val) {
                      n30 = val;
                    },
                    controller: ctrl30..text = number30,
                    style: const TextStyle(
                        fontSize: 24, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    maxLength: 1,
                    decoration: const InputDecoration(
                        filled: true,
                        fillColor: Colors.lightBlueAccent,
                        counterText: "",
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 5.0)),
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 2.0))),
                  ),
                  TextField(
                    onChanged: (val) {
                      n31 = val;
                    },
                    controller: ctrl31..text = number31,
                    style: const TextStyle(
                        fontSize: 24, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    maxLength: 1,
                    decoration: const InputDecoration(
                        filled: true,
                        fillColor: Colors.blue,
                        counterText: "",
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 5.0)),
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 2.0))),
                  ),
                  TextField(
                    onChanged: (val) {
                      n32 = val;
                    },
                    controller: ctrl32..text = number32,
                    style: const TextStyle(
                        fontSize: 24, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    maxLength: 1,
                    decoration: const InputDecoration(
                        filled: true,
                        fillColor: Colors.blue,
                        counterText: "",
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 5.0)),
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 2.0))),
                  ),
                  TextField(
                    onChanged: (val) {
                      n33 = val;
                    },
                    controller: ctrl33..text = number33,
                    style: const TextStyle(
                        fontSize: 24, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    maxLength: 1,
                    decoration: const InputDecoration(
                        filled: true,
                        fillColor: Colors.blue,
                        counterText: "",
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 5.0)),
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 2.0))),
                  ),
                  TextField(
                    onChanged: (val) {
                      n34 = val;
                    },
                    controller: ctrl34..text = number34,
                    style: const TextStyle(
                        fontSize: 24, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    maxLength: 1,
                    decoration: const InputDecoration(
                        filled: true,
                        fillColor: Colors.lightBlueAccent,
                        counterText: "",
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 5.0)),
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 2.0))),
                  ),
                  TextField(
                    onChanged: (val) {
                      n35 = val;
                    },
                    controller: ctrl35..text = number35,
                    style: const TextStyle(
                        fontSize: 24, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    maxLength: 1,
                    decoration: const InputDecoration(
                        filled: true,
                        fillColor: Colors.lightBlueAccent,
                        counterText: "",
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 5.0)),
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 2.0))),
                  ),
                  TextField(
                    onChanged: (val) {
                      n36 = val;
                    },
                    controller: ctrl36..text = number36,
                    style: const TextStyle(
                        fontSize: 24, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    maxLength: 1,
                    decoration: const InputDecoration(
                        filled: true,
                        fillColor: Colors.lightBlueAccent,
                        counterText: "",
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 5.0)),
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 2.0))),
                  ),
                  TextField(
                    onChanged: (val) {
                      n37 = val;
                    },
                    controller: ctrl37..text = number37,
                    style: const TextStyle(
                        fontSize: 24, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    maxLength: 1,
                    decoration: const InputDecoration(
                        filled: true,
                        fillColor: Colors.lightBlueAccent,
                        counterText: "",
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 5.0)),
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 2.0))),
                  ),
                  TextField(
                    onChanged: (val) {
                      n38 = val;
                    },
                    controller: ctrl38..text = number38,
                    style: const TextStyle(
                        fontSize: 24, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    maxLength: 1,
                    decoration: const InputDecoration(
                        filled: true,
                        fillColor: Colors.lightBlueAccent,
                        counterText: "",
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 5.0)),
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 2.0))),
                  ),
                  TextField(
                    onChanged: (val) {
                      n39 = val;
                    },
                    controller: ctrl39..text = number39,
                    style: const TextStyle(
                        fontSize: 24, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    maxLength: 1,
                    decoration: const InputDecoration(
                        filled: true,
                        fillColor: Colors.lightBlueAccent,
                        counterText: "",
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 5.0)),
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 2.0))),
                  ),
                  TextField(
                    onChanged: (val) {
                      n40 = val;
                    },
                    controller: ctrl40..text = number40,
                    style: const TextStyle(
                        fontSize: 24, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    maxLength: 1,
                    decoration: const InputDecoration(
                        filled: true,
                        fillColor: Colors.blue,
                        counterText: "",
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 5.0)),
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 2.0))),
                  ),
                  TextField(
                    onChanged: (val) {
                      n41 = val;
                    },
                    controller: ctrl41..text = number41,
                    style: const TextStyle(
                        fontSize: 24, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    maxLength: 1,
                    decoration: const InputDecoration(
                        filled: true,
                        fillColor: Colors.blue,
                        counterText: "",
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 5.0)),
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 2.0))),
                  ),
                  TextField(
                    onChanged: (val) {
                      n42 = val;
                    },
                    controller: ctrl42..text = number42,
                    style: const TextStyle(
                        fontSize: 24, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    maxLength: 1,
                    decoration: const InputDecoration(
                        filled: true,
                        fillColor: Colors.blue,
                        counterText: "",
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 5.0)),
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 2.0))),
                  ),
                  TextField(
                    onChanged: (val) {
                      n43 = val;
                    },
                    controller: ctrl43..text = number43,
                    style: const TextStyle(
                        fontSize: 24, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    maxLength: 1,
                    decoration: const InputDecoration(
                        filled: true,
                        fillColor: Colors.lightBlueAccent,
                        counterText: "",
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 5.0)),
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 2.0))),
                  ),
                  TextField(
                    onChanged: (val) {
                      n44 = val;
                    },
                    controller: ctrl44..text = number44,
                    style: const TextStyle(
                        fontSize: 24, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    maxLength: 1,
                    decoration: const InputDecoration(
                        filled: true,
                        fillColor: Colors.lightBlueAccent,
                        counterText: "",
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 5.0)),
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 2.0))),
                  ),
                  TextField(
                    onChanged: (val) {
                      n45 = val;
                    },
                    controller: ctrl45..text = number45,
                    style: const TextStyle(
                        fontSize: 24, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    maxLength: 1,
                    decoration: const InputDecoration(
                        filled: true,
                        fillColor: Colors.lightBlueAccent,
                        counterText: "",
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 5.0)),
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 2.0))),
                  ),
                  TextField(
                    onChanged: (val) {
                      n46 = val;
                    },
                    controller: ctrl46..text = number46,
                    style: const TextStyle(
                        fontSize: 24, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    maxLength: 1,
                    decoration: const InputDecoration(
                        filled: true,
                        fillColor: Colors.lightBlueAccent,
                        counterText: "",
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 5.0)),
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 2.0))),
                  ),
                  TextField(
                    onChanged: (val) {
                      n47 = val;
                    },
                    controller: ctrl47..text = number47,
                    style: const TextStyle(
                        fontSize: 24, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    maxLength: 1,
                    decoration: const InputDecoration(
                        filled: true,
                        fillColor: Colors.lightBlueAccent,
                        counterText: "",
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 5.0)),
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 2.0))),
                  ),
                  TextField(
                    onChanged: (val) {
                      n48 = val;
                    },
                    controller: ctrl48..text = number48,
                    style: const TextStyle(
                        fontSize: 24, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    maxLength: 1,
                    decoration: const InputDecoration(
                        filled: true,
                        fillColor: Colors.lightBlueAccent,
                        counterText: "",
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 5.0)),
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 2.0))),
                  ),
                  TextField(
                    onChanged: (val) {
                      n49 = val;
                    },
                    controller: ctrl49..text = number49,
                    style: const TextStyle(
                        fontSize: 24, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    maxLength: 1,
                    decoration: const InputDecoration(
                        filled: true,
                        fillColor: Colors.blue,
                        counterText: "",
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 5.0)),
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 2.0))),
                  ),
                  TextField(
                    onChanged: (val) {
                      n50 = val;
                    },
                    controller: ctrl50..text = number50,
                    style: const TextStyle(
                        fontSize: 24, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    maxLength: 1,
                    decoration: const InputDecoration(
                        filled: true,
                        fillColor: Colors.blue,
                        counterText: "",
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 5.0)),
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 2.0))),
                  ),
                  TextField(
                    onChanged: (val) {
                      n51 = val;
                    },
                    controller: ctrl51..text = number51,
                    style: const TextStyle(
                        fontSize: 24, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    maxLength: 1,
                    decoration: const InputDecoration(
                        filled: true,
                        fillColor: Colors.blue,
                        counterText: "",
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 5.0)),
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 2.0))),
                  ),
                  TextField(
                    onChanged: (val) {
                      n52 = val;
                    },
                    controller: ctrl52..text = number52,
                    style: const TextStyle(
                        fontSize: 24, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    maxLength: 1,
                    decoration: const InputDecoration(
                        filled: true,
                        fillColor: Colors.lightBlueAccent,
                        counterText: "",
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 5.0)),
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 2.0))),
                  ),
                  TextField(
                    onChanged: (val) {
                      n53 = val;
                    },
                    controller: ctrl53..text = number53,
                    style: const TextStyle(
                        fontSize: 24, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    maxLength: 1,
                    decoration: const InputDecoration(
                        filled: true,
                        fillColor: Colors.lightBlueAccent,
                        counterText: "",
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 5.0)),
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 2.0))),
                  ),
                  TextField(
                    onChanged: (val) {
                      n54 = val;
                    },
                    controller: ctrl54..text = number54,
                    style: const TextStyle(
                        fontSize: 24, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    maxLength: 1,
                    decoration: const InputDecoration(
                        filled: true,
                        fillColor: Colors.lightBlueAccent,
                        counterText: "",
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 5.0)),
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 2.0))),
                  ),
                  TextField(
                    onChanged: (val) {
                      n55 = val;
                    },
                    controller: ctrl55..text = number55,
                    style: const TextStyle(
                        fontSize: 24, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    maxLength: 1,
                    decoration: const InputDecoration(
                        filled: true,
                        fillColor: Colors.blue,
                        counterText: "",
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 5.0)),
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 2.0))),
                  ),
                  TextField(
                    onChanged: (val) {
                      n56 = val;
                    },
                    controller: ctrl56..text = number56,
                    style: const TextStyle(
                        fontSize: 24, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    maxLength: 1,
                    decoration: const InputDecoration(
                        filled: true,
                        fillColor: Colors.blue,
                        counterText: "",
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 5.0)),
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 2.0))),
                  ),
                  TextField(
                    onChanged: (val) {
                      n57 = val;
                    },
                    controller: ctrl57..text = number57,
                    style: const TextStyle(
                        fontSize: 24, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    maxLength: 1,
                    decoration: const InputDecoration(
                        filled: true,
                        fillColor: Colors.blue,
                        counterText: "",
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 5.0)),
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 2.0))),
                  ),
                  TextField(
                    onChanged: (val) {
                      n58 = val;
                    },
                    controller: ctrl58..text = number58,
                    style: const TextStyle(
                        fontSize: 24, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    maxLength: 1,
                    decoration: const InputDecoration(
                        filled: true,
                        fillColor: Colors.lightBlueAccent,
                        counterText: "",
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 5.0)),
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 2.0))),
                  ),
                  TextField(
                    onChanged: (val) {
                      n59 = val;
                    },
                    controller: ctrl59..text = number59,
                    style: const TextStyle(
                        fontSize: 24, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    maxLength: 1,
                    decoration: const InputDecoration(
                        filled: true,
                        fillColor: Colors.lightBlueAccent,
                        counterText: "",
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 5.0)),
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 2.0))),
                  ),
                  TextField(
                    onChanged: (val) {
                      n60 = val;
                    },
                    controller: ctrl60..text = number60,
                    style: const TextStyle(
                        fontSize: 24, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    maxLength: 1,
                    decoration: const InputDecoration(
                        filled: true,
                        fillColor: Colors.lightBlueAccent,
                        counterText: "",
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 5.0)),
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 2.0))),
                  ),
                  TextField(
                    onChanged: (val) {
                      n61 = val;
                    },
                    controller: ctrl61..text = number61,
                    style: const TextStyle(
                        fontSize: 24, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    maxLength: 1,
                    decoration: const InputDecoration(
                        filled: true,
                        fillColor: Colors.blue,
                        counterText: "",
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 5.0)),
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 2.0))),
                  ),
                  TextField(
                    onChanged: (val) {
                      n62 = val;
                    },
                    controller: ctrl62..text = number62,
                    style: const TextStyle(
                        fontSize: 24, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    maxLength: 1,
                    decoration: const InputDecoration(
                        filled: true,
                        fillColor: Colors.blue,
                        counterText: "",
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 5.0)),
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 2.0))),
                  ),
                  TextField(
                    onChanged: (val) {
                      n63 = val;
                    },
                    controller: ctrl63..text = number63,
                    style: const TextStyle(
                        fontSize: 24, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    maxLength: 1,
                    decoration: const InputDecoration(
                        filled: true,
                        fillColor: Colors.blue,
                        counterText: "",
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 5.0)),
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 2.0))),
                  ),
                  TextField(
                    onChanged: (val) {
                      n64 = val;
                    },
                    controller: ctrl64..text = number64,
                    style: const TextStyle(
                        fontSize: 24, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    maxLength: 1,
                    decoration: const InputDecoration(
                        filled: true,
                        fillColor: Colors.blue,
                        counterText: "",
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 5.0)),
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 2.0))),
                  ),
                  TextField(
                    onChanged: (val) {
                      n65 = val;
                    },
                    controller: ctrl65..text = number65,
                    style: const TextStyle(
                        fontSize: 24, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    maxLength: 1,
                    decoration: const InputDecoration(
                        filled: true,
                        fillColor: Colors.blue,
                        counterText: "",
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 5.0)),
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 2.0))),
                  ),
                  TextField(
                    onChanged: (val) {
                      n66 = val;
                    },
                    controller: ctrl66..text = number66,
                    style: const TextStyle(
                        fontSize: 24, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    maxLength: 1,
                    decoration: const InputDecoration(
                        filled: true,
                        fillColor: Colors.blue,
                        counterText: "",
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 5.0)),
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 2.0))),
                  ),
                  TextField(
                    onChanged: (val) {
                      n67 = val;
                    },
                    controller: ctrl67..text = number67,
                    style: const TextStyle(
                        fontSize: 24, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    maxLength: 1,
                    decoration: const InputDecoration(
                        filled: true,
                        fillColor: Colors.lightBlueAccent,
                        counterText: "",
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 5.0)),
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 2.0))),
                  ),
                  TextField(
                    onChanged: (val) {
                      n68 = val;
                    },
                    controller: ctrl68..text = number68,
                    style: const TextStyle(
                        fontSize: 24, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    maxLength: 1,
                    decoration: const InputDecoration(
                        filled: true,
                        fillColor: Colors.lightBlueAccent,
                        counterText: "",
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 5.0)),
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 2.0))),
                  ),
                  TextField(
                    onChanged: (val) {
                      n69 = val;
                    },
                    controller: ctrl69..text = number69,
                    style: const TextStyle(
                        fontSize: 24, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    maxLength: 1,
                    decoration: const InputDecoration(
                        filled: true,
                        fillColor: Colors.lightBlueAccent,
                        counterText: "",
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 5.0)),
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 2.0))),
                  ),
                  TextField(
                    onChanged: (val) {
                      n70 = val;
                    },
                    controller: ctrl70..text = number70,
                    style: const TextStyle(
                        fontSize: 24, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    maxLength: 1,
                    decoration: const InputDecoration(
                        filled: true,
                        fillColor: Colors.blue,
                        counterText: "",
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 5.0)),
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 2.0))),
                  ),
                  TextField(
                    onChanged: (val) {
                      n71 = val;
                    },
                    controller: ctrl71..text = number71,
                    style: const TextStyle(
                        fontSize: 24, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    maxLength: 1,
                    decoration: const InputDecoration(
                        filled: true,
                        fillColor: Colors.blue,
                        counterText: "",
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 5.0)),
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 2.0))),
                  ),
                  TextField(
                    onChanged: (val) {
                      n72 = val;
                    },
                    controller: ctrl72..text = number72,
                    style: const TextStyle(
                        fontSize: 24, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    maxLength: 1,
                    decoration: const InputDecoration(
                        filled: true,
                        fillColor: Colors.blue,
                        counterText: "",
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 5.0)),
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 2.0))),
                  ),
                  TextField(
                    onChanged: (val) {
                      n73 = val;
                    },
                    controller: ctrl73..text = number73,
                    style: const TextStyle(
                        fontSize: 24, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    maxLength: 1,
                    decoration: const InputDecoration(
                        filled: true,
                        fillColor: Colors.blue,
                        counterText: "",
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 5.0)),
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 2.0))),
                  ),
                  TextField(
                    onChanged: (val) {
                      n74 = val;
                    },
                    controller: ctrl74..text = number74,
                    style: const TextStyle(
                        fontSize: 24, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    maxLength: 1,
                    decoration: const InputDecoration(
                        filled: true,
                        fillColor: Colors.blue,
                        counterText: "",
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 5.0)),
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 2.0))),
                  ),
                  TextField(
                    onChanged: (val) {
                      n75 = val;
                    },
                    controller: ctrl75..text = number75,
                    style: const TextStyle(
                        fontSize: 24, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    maxLength: 1,
                    decoration: const InputDecoration(
                        filled: true,
                        fillColor: Colors.blue,
                        counterText: "",
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 5.0)),
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 2.0))),
                  ),
                  TextField(
                    onChanged: (val) {
                      n76 = val;
                    },
                    controller: ctrl76..text = number76,
                    style: const TextStyle(
                        fontSize: 24, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    maxLength: 1,
                    decoration: const InputDecoration(
                        filled: true,
                        fillColor: Colors.lightBlueAccent,
                        counterText: "",
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 5.0)),
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 2.0))),
                  ),
                  TextField(
                    onChanged: (val) {
                      n77 = val;
                    },
                    controller: ctrl77..text = number77,
                    style: const TextStyle(
                        fontSize: 24, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    maxLength: 1,
                    decoration: const InputDecoration(
                        filled: true,
                        fillColor: Colors.lightBlueAccent,
                        counterText: "",
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 5.0)),
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 2.0))),
                  ),
                  TextField(
                    onChanged: (val) {
                      n78 = val;
                    },
                    controller: ctrl78..text = number78,
                    style: const TextStyle(
                        fontSize: 24, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    maxLength: 1,
                    decoration: const InputDecoration(
                        filled: true,
                        fillColor: Colors.lightBlueAccent,
                        counterText: "",
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 5.0)),
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 2.0))),
                  ),
                  TextField(
                    onChanged: (val) {
                      n79 = val;
                    },
                    controller: ctrl79..text = number79,
                    style: const TextStyle(
                        fontSize: 24, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    maxLength: 1,
                    decoration: const InputDecoration(
                        filled: true,
                        fillColor: Colors.blue,
                        counterText: "",
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 5.0)),
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 2.0))),
                  ),
                  TextField(
                    onChanged: (val) {
                      n80 = val;
                    },
                    controller: ctrl80..text = number80,
                    style: const TextStyle(
                        fontSize: 24, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    maxLength: 1,
                    decoration: const InputDecoration(
                        filled: true,
                        fillColor: Colors.blue,
                        counterText: "",
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 5.0)),
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 2.0))),
                  ),
                  TextField(
                    onChanged: (val) {
                      n81 = val;
                    },
                    controller: ctrl81..text = number81,
                    style: const TextStyle(
                        fontSize: 24, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    maxLength: 1,
                    decoration: const InputDecoration(
                        filled: true,
                        fillColor: Colors.blue,
                        counterText: "",
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 5.0)),
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 2.0))),
                  ),
                ],
              ),
            ),
            floatingActionButton: Wrap(
              direction: Axis.horizontal,
              children: [
                Container(
                  margin: const EdgeInsets.all(10),
                  child: FloatingActionButton(
                    onPressed: () async {
                      if (solved == false) {
                        setState(() => loading = true);
                        final response = await http.get(Uri.parse(
                            "https://42bb-50-100-148-118.ngrok.io/upload"));
                        final decoded =
                            json.decode(response.body) as Map<String, dynamic>;
                        setState(() {
                          number = decoded['val'].toString();
                          number2 = decoded['val2'].toString();
                          number3 = decoded['val3'].toString();
                          number4 = decoded['val4'].toString();
                          number5 = decoded['val5'].toString();
                          number6 = decoded['val6'].toString();
                          number7 = decoded['val7'].toString();
                          number8 = decoded['val8'].toString();
                          number9 = decoded['val9'].toString();
                          number10 = decoded['val10'].toString();
                          number11 = decoded['val11'].toString();
                          number12 = decoded['val12'].toString();
                          number13 = decoded['val13'].toString();
                          number14 = decoded['val14'].toString();
                          number15 = decoded['val15'].toString();
                          number16 = decoded['val16'].toString();
                          number17 = decoded['val17'].toString();
                          number18 = decoded['val18'].toString();
                          number19 = decoded['val19'].toString();
                          number20 = decoded['val20'].toString();
                          number21 = decoded['val21'].toString();
                          number22 = decoded['val22'].toString();
                          number23 = decoded['val23'].toString();
                          number24 = decoded['val24'].toString();
                          number25 = decoded['val25'].toString();
                          number26 = decoded['val26'].toString();
                          number27 = decoded['val27'].toString();
                          number28 = decoded['val28'].toString();
                          number29 = decoded['val29'].toString();
                          number30 = decoded['val30'].toString();
                          number31 = decoded['val31'].toString();
                          number32 = decoded['val32'].toString();
                          number33 = decoded['val33'].toString();
                          number34 = decoded['val34'].toString();
                          number35 = decoded['val35'].toString();
                          number36 = decoded['val36'].toString();
                          number37 = decoded['val37'].toString();
                          number38 = decoded['val38'].toString();
                          number39 = decoded['val39'].toString();
                          number40 = decoded['val40'].toString();
                          number41 = decoded['val41'].toString();
                          number42 = decoded['val42'].toString();
                          number43 = decoded['val43'].toString();
                          number44 = decoded['val44'].toString();
                          number45 = decoded['val45'].toString();
                          number46 = decoded['val46'].toString();
                          number47 = decoded['val47'].toString();
                          number48 = decoded['val48'].toString();
                          number49 = decoded['val49'].toString();
                          number50 = decoded['val50'].toString();
                          number51 = decoded['val51'].toString();
                          number52 = decoded['val52'].toString();
                          number53 = decoded['val53'].toString();
                          number54 = decoded['val54'].toString();
                          number55 = decoded['val55'].toString();
                          number56 = decoded['val56'].toString();
                          number57 = decoded['val57'].toString();
                          number58 = decoded['val58'].toString();
                          number59 = decoded['val59'].toString();
                          number60 = decoded['val60'].toString();
                          number61 = decoded['val61'].toString();
                          number62 = decoded['val62'].toString();
                          number63 = decoded['val63'].toString();
                          number64 = decoded['val64'].toString();
                          number65 = decoded['val65'].toString();
                          number66 = decoded['val66'].toString();
                          number67 = decoded['val67'].toString();
                          number68 = decoded['val68'].toString();
                          number69 = decoded['val69'].toString();
                          number70 = decoded['val70'].toString();
                          number71 = decoded['val71'].toString();
                          number72 = decoded['val72'].toString();
                          number73 = decoded['val73'].toString();
                          number74 = decoded['val74'].toString();
                          number75 = decoded['val75'].toString();
                          number76 = decoded['val76'].toString();
                          number77 = decoded['val77'].toString();
                          number78 = decoded['val78'].toString();
                          number79 = decoded['val79'].toString();
                          number80 = decoded['val80'].toString();
                          number81 = decoded['val81'].toString();
                          loading = false;
                        });
                      } else {
                        showToast("Puzzle Already Solved");
                      }
                    },
                    child: const Icon(Icons.edit),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(10),
                  child: FloatingActionButton(
                    onPressed: () async {
                      if (solved == false) {
                        setState(() {
                          loading = true;
                          number = setNumber(number, n1);
                          number2 = setNumber(number2, n2);
                          number3 = setNumber(number3, n3);
                          number4 = setNumber(number4, n4);
                          number5 = setNumber(number5, n5);
                          number6 = setNumber(number6, n6);
                          number7 = setNumber(number7, n7);
                          number8 = setNumber(number8, n8);
                          number9 = setNumber(number9, n9);
                          number10 = setNumber(number10, n10);
                          number11 = setNumber(number11, n11);
                          number12 = setNumber(number12, n12);
                          number13 = setNumber(number13, n13);
                          number14 = setNumber(number14, n14);
                          number15 = setNumber(number15, n15);
                          number16 = setNumber(number16, n16);
                          number17 = setNumber(number17, n17);
                          number18 = setNumber(number18, n18);
                          number19 = setNumber(number19, n19);
                          number20 = setNumber(number20, n20);
                          number21 = setNumber(number21, n21);
                          number22 = setNumber(number22, n22);
                          number23 = setNumber(number23, n23);
                          number24 = setNumber(number24, n24);
                          number25 = setNumber(number25, n25);
                          number26 = setNumber(number26, n26);
                          number27 = setNumber(number27, n27);
                          number28 = setNumber(number28, n28);
                          number29 = setNumber(number29, n29);
                          number30 = setNumber(number30, n30);
                          number31 = setNumber(number31, n31);
                          number32 = setNumber(number32, n32);
                          number33 = setNumber(number33, n33);
                          number34 = setNumber(number34, n34);
                          number35 = setNumber(number35, n35);
                          number36 = setNumber(number36, n36);
                          number37 = setNumber(number37, n37);
                          number38 = setNumber(number38, n38);
                          number39 = setNumber(number39, n39);
                          number40 = setNumber(number40, n40);
                          number41 = setNumber(number41, n41);
                          number42 = setNumber(number42, n42);
                          number43 = setNumber(number43, n43);
                          number44 = setNumber(number44, n44);
                          number45 = setNumber(number45, n45);
                          number46 = setNumber(number46, n46);
                          number47 = setNumber(number47, n47);
                          number48 = setNumber(number48, n48);
                          number49 = setNumber(number49, n49);
                          number50 = setNumber(number50, n50);
                          number51 = setNumber(number51, n51);
                          number52 = setNumber(number52, n52);
                          number53 = setNumber(number53, n53);
                          number54 = setNumber(number54, n54);
                          number55 = setNumber(number55, n55);
                          number56 = setNumber(number56, n56);
                          number57 = setNumber(number57, n57);
                          number58 = setNumber(number58, n58);
                          number59 = setNumber(number59, n59);
                          number60 = setNumber(number60, n60);
                          number61 = setNumber(number61, n61);
                          number62 = setNumber(number62, n62);
                          number63 = setNumber(number63, n63);
                          number64 = setNumber(number64, n64);
                          number65 = setNumber(number65, n65);
                          number66 = setNumber(number66, n66);
                          number67 = setNumber(number67, n67);
                          number68 = setNumber(number68, n68);
                          number69 = setNumber(number69, n69);
                          number70 = setNumber(number70, n70);
                          number71 = setNumber(number71, n71);
                          number72 = setNumber(number72, n72);
                          number73 = setNumber(number73, n73);
                          number74 = setNumber(number74, n74);
                          number75 = setNumber(number75, n75);
                          number76 = setNumber(number76, n76);
                          number77 = setNumber(number77, n77);
                          number78 = setNumber(number78, n78);
                          number79 = setNumber(number79, n79);
                          number80 = setNumber(number80, n80);
                          number81 = setNumber(number81, n81);
                        });

                        final response = await http.post(
                            Uri.parse(
                                'https://e6a3-50-100-148-118.ngrok.io/upload2'),
                            body: json.encode({
                              'val1': int.parse(number),
                              'val2': int.parse(number2),
                              'val3': int.parse(number3),
                              'val4': int.parse(number4),
                              'val5': int.parse(number5),
                              'val6': int.parse(number6),
                              'val7': int.parse(number7),
                              'val8': int.parse(number8),
                              'val9': int.parse(number9),
                              'val10': int.parse(number10),
                              'val11': int.parse(number11),
                              'val12': int.parse(number12),
                              'val13': int.parse(number13),
                              'val14': int.parse(number14),
                              'val15': int.parse(number15),
                              'val16': int.parse(number16),
                              'val17': int.parse(number17),
                              'val18': int.parse(number18),
                              'val19': int.parse(number19),
                              'val20': int.parse(number20),
                              'val21': int.parse(number21),
                              'val22': int.parse(number22),
                              'val23': int.parse(number23),
                              'val24': int.parse(number24),
                              'val25': int.parse(number25),
                              'val26': int.parse(number26),
                              'val27': int.parse(number27),
                              'val28': int.parse(number28),
                              'val29': int.parse(number29),
                              'val30': int.parse(number30),
                              'val31': int.parse(number40),
                              'val32': int.parse(number32),
                              'val33': int.parse(number33),
                              'val34': int.parse(number34),
                              'val35': int.parse(number35),
                              'val36': int.parse(number36),
                              'val37': int.parse(number37),
                              'val38': int.parse(number38),
                              'val39': int.parse(number39),
                              'val40': int.parse(number40),
                              'val41': int.parse(number41),
                              'val42': int.parse(number42),
                              'val43': int.parse(number43),
                              'val44': int.parse(number44),
                              'val45': int.parse(number45),
                              'val46': int.parse(number46),
                              'val47': int.parse(number47),
                              'val48': int.parse(number48),
                              'val49': int.parse(number49),
                              'val50': int.parse(number50),
                              'val51': int.parse(number51),
                              'val52': int.parse(number52),
                              'val53': int.parse(number53),
                              'val54': int.parse(number54),
                              'val55': int.parse(number55),
                              'val56': int.parse(number56),
                              'val57': int.parse(number57),
                              'val58': int.parse(number58),
                              'val59': int.parse(number59),
                              'val60': int.parse(number60),
                              'val61': int.parse(number61),
                              'val62': int.parse(number62),
                              'val63': int.parse(number63),
                              'val64': int.parse(number64),
                              'val65': int.parse(number65),
                              'val66': int.parse(number66),
                              'val67': int.parse(number67),
                              'val68': int.parse(number68),
                              'val69': int.parse(number69),
                              'val70': int.parse(number70),
                              'val71': int.parse(number71),
                              'val72': int.parse(number72),
                              'val73': int.parse(number73),
                              'val74': int.parse(number74),
                              'val75': int.parse(number75),
                              'val76': int.parse(number76),
                              'val77': int.parse(number77),
                              'val78': int.parse(number78),
                              'val79': int.parse(number79),
                              'val80': int.parse(number80),
                              'val81': int.parse(number81)
                            }));

                        final receive = await http.get(Uri.parse(
                            'https://42bb-50-100-148-118.ngrok.io/upload2'));
                        final decoded =
                            json.decode(receive.body) as Map<String, dynamic>;
                        setState(() {
                          number = decoded['val'].toString();
                          number2 = decoded['val2'].toString();
                          number3 = decoded['val3'].toString();
                          number4 = decoded['val4'].toString();
                          number5 = decoded['val5'].toString();
                          number6 = decoded['val6'].toString();
                          number7 = decoded['val7'].toString();
                          number8 = decoded['val8'].toString();
                          number9 = decoded['val9'].toString();
                          number10 = decoded['val10'].toString();
                          number11 = decoded['val11'].toString();
                          number12 = decoded['val12'].toString();
                          number13 = decoded['val13'].toString();
                          number14 = decoded['val14'].toString();
                          number15 = decoded['val15'].toString();
                          number16 = decoded['val16'].toString();
                          number17 = decoded['val17'].toString();
                          number18 = decoded['val18'].toString();
                          number19 = decoded['val19'].toString();
                          number20 = decoded['val20'].toString();
                          number21 = decoded['val21'].toString();
                          number22 = decoded['val22'].toString();
                          number23 = decoded['val23'].toString();
                          number24 = decoded['val24'].toString();
                          number25 = decoded['val25'].toString();
                          number26 = decoded['val26'].toString();
                          number27 = decoded['val27'].toString();
                          number28 = decoded['val28'].toString();
                          number29 = decoded['val29'].toString();
                          number30 = decoded['val30'].toString();
                          number31 = decoded['val31'].toString();
                          number32 = decoded['val32'].toString();
                          number33 = decoded['val33'].toString();
                          number34 = decoded['val34'].toString();
                          number35 = decoded['val35'].toString();
                          number36 = decoded['val36'].toString();
                          number37 = decoded['val37'].toString();
                          number38 = decoded['val38'].toString();
                          number39 = decoded['val39'].toString();
                          number40 = decoded['val40'].toString();
                          number41 = decoded['val41'].toString();
                          number42 = decoded['val42'].toString();
                          number43 = decoded['val43'].toString();
                          number44 = decoded['val44'].toString();
                          number45 = decoded['val45'].toString();
                          number46 = decoded['val46'].toString();
                          number47 = decoded['val47'].toString();
                          number48 = decoded['val48'].toString();
                          number49 = decoded['val49'].toString();
                          number50 = decoded['val50'].toString();
                          number51 = decoded['val51'].toString();
                          number52 = decoded['val52'].toString();
                          number53 = decoded['val53'].toString();
                          number54 = decoded['val54'].toString();
                          number55 = decoded['val55'].toString();
                          number56 = decoded['val56'].toString();
                          number57 = decoded['val57'].toString();
                          number58 = decoded['val58'].toString();
                          number59 = decoded['val59'].toString();
                          number60 = decoded['val60'].toString();
                          number61 = decoded['val61'].toString();
                          number62 = decoded['val62'].toString();
                          number63 = decoded['val63'].toString();
                          number64 = decoded['val64'].toString();
                          number65 = decoded['val65'].toString();
                          number66 = decoded['val66'].toString();
                          number67 = decoded['val67'].toString();
                          number68 = decoded['val68'].toString();
                          number69 = decoded['val69'].toString();
                          number70 = decoded['val70'].toString();
                          number71 = decoded['val71'].toString();
                          number72 = decoded['val72'].toString();
                          number73 = decoded['val73'].toString();
                          number74 = decoded['val74'].toString();
                          number75 = decoded['val75'].toString();
                          number76 = decoded['val76'].toString();
                          number77 = decoded['val77'].toString();
                          number78 = decoded['val78'].toString();
                          number79 = decoded['val79'].toString();
                          number80 = decoded['val80'].toString();
                          number81 = decoded['val81'].toString();
                          loading = false;
                          if (decoded['message'].toString() ==
                              "Un-Solvable Puzzle") {
                            showToast("Un-Solvable Puzzle");
                          } else {
                            showToast("Puzzle Solved!");
                            solved = true;
                          }
                        });
                      } else {
                        showToast("Puzzle Already Solved");
                      }
                    },
                    child: const Icon(Icons.check),
                  ),
                )
              ],
            ));
  }
}
