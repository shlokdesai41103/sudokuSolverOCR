import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'numbers.dart';
import 'Services.dart';
import 'package:http/http.dart' as http;

class EditPuzzle extends StatefulWidget {
  const EditPuzzle({Key? key}) : super(key: key);

  @override
  State<EditPuzzle> createState() => _EditPuzzleState();
}

class _EditPuzzleState extends State<EditPuzzle> {
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
    if (text == "") {
      return value;
    } else {
      return text;
    }
  }

  // @override
  // void initState() {
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
    return Scaffold(
        appBar: AppBar(
          title: const Text('Numbers'),
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
                controller: ctrl1..text = number,
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
                keyboardType: TextInputType.number,
                maxLength: 1,
                decoration: const InputDecoration(
                  counterText: "",
                ),
                // onChanged: (value) {
                //   ctrl1.text = value;
                // },
              ),
              TextField(
                controller: ctrl2..text = number2,
                onChanged: (text) => {number2 = text},
                style:
                    const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
                keyboardType: TextInputType.number,
                maxLength: 1,
                decoration: const InputDecoration(counterText: ""),
              ),
              TextField(
                controller: ctrl3..text = number3,
                style:
                    const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
                keyboardType: TextInputType.number,
                maxLength: 1,
                decoration: const InputDecoration(
                  counterText: "",
                ),
              ),
              TextField(
                controller: ctrl4..text = number4,
                style:
                    const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
                keyboardType: TextInputType.number,
                maxLength: 1,
                decoration: const InputDecoration(counterText: ""),
              ),
              TextField(
                controller: ctrl5..text = number5,
                style:
                    const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
                keyboardType: TextInputType.number,
                maxLength: 1,
                decoration: const InputDecoration(
                  counterText: "",
                ),
              ),
              TextField(
                controller: ctrl6..text = number6,
                style:
                    const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
                keyboardType: TextInputType.number,
                maxLength: 1,
                decoration: const InputDecoration(
                  counterText: "",
                ),
              ),
              TextField(
                controller: ctrl7..text = number7,
                style:
                    const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
                keyboardType: TextInputType.number,
                maxLength: 1,
                decoration: const InputDecoration(
                  counterText: "",
                ),
              ),
              TextField(
                controller: ctrl8..text = number8,
                style:
                    const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
                keyboardType: TextInputType.number,
                maxLength: 1,
                decoration: const InputDecoration(counterText: ""),
              ),
              TextField(
                controller: ctrl9..text = number9,
                style:
                    const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
                keyboardType: TextInputType.number,
                maxLength: 1,
                decoration: const InputDecoration(
                  counterText: "",
                ),
              ),
              TextField(
                controller: ctrl10..text = number10,
                style:
                    const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
                keyboardType: TextInputType.number,
                maxLength: 1,
                decoration: const InputDecoration(
                  counterText: "",
                ),
              ),
              TextField(
                controller: ctrl11..text = number11,
                style:
                    const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
                keyboardType: TextInputType.number,
                maxLength: 1,
                decoration: const InputDecoration(counterText: ""),
              ),
              TextField(
                controller: ctrl12..text = number12,
                style:
                    const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
                keyboardType: TextInputType.number,
                maxLength: 1,
                decoration: const InputDecoration(
                  counterText: "",
                ),
              ),
              TextField(
                controller: ctrl13..text = number13,
                style:
                    const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
                keyboardType: TextInputType.number,
                maxLength: 1,
                decoration: const InputDecoration(
                  counterText: "",
                ),
              ),
              TextField(
                controller: ctrl14..text = number14,
                style:
                    const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
                keyboardType: TextInputType.number,
                maxLength: 1,
                decoration: const InputDecoration(
                  counterText: "",
                ),
              ),
              TextField(
                controller: ctrl15..text = number15,
                style:
                    const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
                keyboardType: TextInputType.number,
                maxLength: 1,
                decoration: const InputDecoration(
                  counterText: "",
                ),
              ),
              TextField(
                controller: ctrl16..text = number16,
                style:
                    const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
                keyboardType: TextInputType.number,
                maxLength: 1,
                decoration: const InputDecoration(
                  counterText: "",
                ),
              ),
              TextField(
                controller: ctrl17..text = number17,
                style:
                    const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
                keyboardType: TextInputType.number,
                maxLength: 1,
                decoration: const InputDecoration(
                  counterText: "",
                ),
              ),
              TextField(
                controller: ctrl18..text = number18,
                style:
                    const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
                keyboardType: TextInputType.number,
                maxLength: 1,
                decoration: const InputDecoration(
                  counterText: "",
                ),
              ),
              TextField(
                controller: ctrl19..text = number19,
                style:
                    const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
                keyboardType: TextInputType.number,
                maxLength: 1,
                decoration: const InputDecoration(
                  counterText: "",
                ),
              ),
              TextField(
                controller: ctrl20..text = number20,
                style:
                    const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
                keyboardType: TextInputType.number,
                maxLength: 1,
                decoration: const InputDecoration(
                  counterText: "",
                ),
              ),
              TextField(
                controller: ctrl21..text = number21,
                style:
                    const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
                keyboardType: TextInputType.number,
                maxLength: 1,
                decoration: const InputDecoration(
                  counterText: "",
                ),
              ),
              TextField(
                controller: ctrl22..text = number22,
                style:
                    const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
                keyboardType: TextInputType.number,
                maxLength: 1,
                decoration: const InputDecoration(
                  counterText: "",
                ),
              ),
              TextField(
                controller: ctrl23..text = number23,
                style:
                    const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
                keyboardType: TextInputType.number,
                maxLength: 1,
                decoration: const InputDecoration(
                  counterText: "",
                ),
              ),
              TextField(
                controller: ctrl24..text = number24,
                style:
                    const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
                keyboardType: TextInputType.number,
                maxLength: 1,
                decoration: const InputDecoration(
                  counterText: "",
                ),
              ),
              TextField(
                controller: ctrl25..text = number25,
                style:
                    const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
                keyboardType: TextInputType.number,
                maxLength: 1,
                decoration: const InputDecoration(
                  counterText: "",
                ),
              ),
              TextField(
                controller: ctrl26..text = number26,
                style:
                    const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
                keyboardType: TextInputType.number,
                maxLength: 1,
                decoration: const InputDecoration(
                  counterText: "",
                ),
              ),
              TextField(
                controller: ctrl27..text = number27,
                style:
                    const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
                keyboardType: TextInputType.number,
                maxLength: 1,
                decoration: const InputDecoration(
                  counterText: "",
                ),
              ),
              TextField(
                controller: ctrl28..text = number28,
                style:
                    const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
                keyboardType: TextInputType.number,
                maxLength: 1,
                decoration: const InputDecoration(
                  counterText: "",
                ),
              ),
              TextField(
                controller: ctrl29..text = number29,
                style:
                    const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
                keyboardType: TextInputType.number,
                maxLength: 1,
                decoration: const InputDecoration(
                  counterText: "",
                ),
              ),
              TextField(
                controller: ctrl30..text = number30,
                style:
                    const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
                keyboardType: TextInputType.number,
                maxLength: 1,
                decoration: const InputDecoration(
                  counterText: "",
                ),
              ),
              TextField(
                controller: ctrl31..text = number31,
                style:
                    const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
                keyboardType: TextInputType.number,
                maxLength: 1,
                decoration: const InputDecoration(
                  counterText: "",
                ),
              ),
              TextField(
                controller: ctrl32..text = number32,
                style:
                    const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
                keyboardType: TextInputType.number,
                maxLength: 1,
                decoration: const InputDecoration(
                  counterText: "",
                ),
              ),
              TextField(
                controller: ctrl33..text = number33,
                style:
                    const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
                keyboardType: TextInputType.number,
                maxLength: 1,
                decoration: const InputDecoration(
                  counterText: "",
                ),
              ),
              TextField(
                controller: ctrl34..text = number34,
                style:
                    const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
                keyboardType: TextInputType.number,
                maxLength: 1,
                decoration: const InputDecoration(
                  counterText: "",
                ),
              ),
              TextField(
                controller: ctrl35..text = number35,
                style:
                    const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
                keyboardType: TextInputType.number,
                maxLength: 1,
                decoration: const InputDecoration(
                  counterText: "",
                ),
              ),
              TextField(
                controller: ctrl36..text = number36,
                style:
                    const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
                keyboardType: TextInputType.number,
                maxLength: 1,
                decoration: const InputDecoration(
                  counterText: "",
                ),
              ),
              TextField(
                controller: ctrl37..text = number37,
                style:
                    const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
                keyboardType: TextInputType.number,
                maxLength: 1,
                decoration: const InputDecoration(
                  counterText: "",
                ),
              ),
              TextField(
                controller: ctrl38..text = number38,
                style:
                    const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
                keyboardType: TextInputType.number,
                maxLength: 1,
                decoration: const InputDecoration(
                  counterText: "",
                ),
              ),
              TextField(
                controller: ctrl39..text = number39,
                style:
                    const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
                keyboardType: TextInputType.number,
                maxLength: 1,
                decoration: const InputDecoration(
                  counterText: "",
                ),
              ),
              TextField(
                controller: ctrl40..text = number40,
                style:
                    const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
                keyboardType: TextInputType.number,
                maxLength: 1,
                decoration: const InputDecoration(
                  counterText: "",
                ),
              ),
              TextField(
                controller: ctrl41..text = number41,
                style:
                    const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
                keyboardType: TextInputType.number,
                maxLength: 1,
                decoration: const InputDecoration(
                  counterText: "",
                ),
              ),
              TextField(
                controller: ctrl42..text = number42,
                style:
                    const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
                keyboardType: TextInputType.number,
                maxLength: 1,
                decoration: const InputDecoration(
                  counterText: "",
                ),
              ),
              TextField(
                controller: ctrl43..text = number43,
                style:
                    const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
                keyboardType: TextInputType.number,
                maxLength: 1,
                decoration: const InputDecoration(
                  counterText: "",
                ),
              ),
              TextField(
                controller: ctrl44..text = number44,
                style:
                    const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
                keyboardType: TextInputType.number,
                maxLength: 1,
                decoration: const InputDecoration(
                  counterText: "",
                ),
              ),
              TextField(
                controller: ctrl45..text = number45,
                style:
                    const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
                keyboardType: TextInputType.number,
                maxLength: 1,
                decoration: const InputDecoration(
                  counterText: "",
                ),
              ),
              TextField(
                controller: ctrl46..text = number46,
                style:
                    const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
                keyboardType: TextInputType.number,
                maxLength: 1,
                decoration: const InputDecoration(
                  counterText: "",
                ),
              ),
              TextField(
                controller: ctrl47..text = number47,
                style:
                    const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
                keyboardType: TextInputType.number,
                maxLength: 1,
                decoration: const InputDecoration(
                  counterText: "",
                ),
              ),
              TextField(
                controller: ctrl48..text = number48,
                style:
                    const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
                keyboardType: TextInputType.number,
                maxLength: 1,
                decoration: const InputDecoration(
                  counterText: "",
                ),
              ),
              TextField(
                controller: ctrl49..text = number49,
                style:
                    const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
                keyboardType: TextInputType.number,
                maxLength: 1,
                decoration: const InputDecoration(
                  counterText: "",
                ),
              ),
              TextField(
                controller: ctrl50..text = number50,
                style:
                    const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
                keyboardType: TextInputType.number,
                maxLength: 1,
                decoration: const InputDecoration(
                  counterText: "",
                ),
              ),
              TextField(
                controller: ctrl51..text = number51,
                style:
                    const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
                keyboardType: TextInputType.number,
                maxLength: 1,
                decoration: const InputDecoration(
                  counterText: "",
                ),
              ),
              TextField(
                controller: ctrl52..text = number52,
                style:
                    const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
                keyboardType: TextInputType.number,
                maxLength: 1,
                decoration: const InputDecoration(
                  counterText: "",
                ),
              ),
              TextField(
                controller: ctrl53..text = number53,
                style:
                    const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
                keyboardType: TextInputType.number,
                maxLength: 1,
                decoration: const InputDecoration(
                  counterText: "",
                ),
              ),
              TextField(
                controller: ctrl54..text = number54,
                style:
                    const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
                keyboardType: TextInputType.number,
                maxLength: 1,
                decoration: const InputDecoration(
                  counterText: "",
                ),
              ),
              TextField(
                controller: ctrl55..text = number55,
                style:
                    const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
                keyboardType: TextInputType.number,
                maxLength: 1,
                decoration: const InputDecoration(
                  counterText: "",
                ),
              ),
              TextField(
                controller: ctrl56..text = number56,
                style:
                    const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
                keyboardType: TextInputType.number,
                maxLength: 1,
                decoration: const InputDecoration(
                  counterText: "",
                ),
              ),
              TextField(
                controller: ctrl57..text = number57,
                style:
                    const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
                keyboardType: TextInputType.number,
                maxLength: 1,
                decoration: const InputDecoration(
                  counterText: "",
                ),
              ),
              TextField(
                controller: ctrl58..text = number58,
                style:
                    const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
                keyboardType: TextInputType.number,
                maxLength: 1,
                decoration: const InputDecoration(
                  counterText: "",
                ),
              ),
              TextField(
                controller: ctrl59..text = number59,
                style:
                    const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
                keyboardType: TextInputType.number,
                maxLength: 1,
                decoration: const InputDecoration(
                  counterText: "",
                ),
              ),
              TextField(
                controller: ctrl60..text = number60,
                style:
                    const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
                keyboardType: TextInputType.number,
                maxLength: 1,
                decoration: const InputDecoration(
                  counterText: "",
                ),
              ),
              TextField(
                controller: ctrl61..text = number61,
                style:
                    const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
                keyboardType: TextInputType.number,
                maxLength: 1,
                decoration: const InputDecoration(
                  counterText: "",
                ),
              ),
              TextField(
                controller: ctrl62..text = number62,
                style:
                    const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
                keyboardType: TextInputType.number,
                maxLength: 1,
                decoration: const InputDecoration(
                  counterText: "",
                ),
              ),
              TextField(
                controller: ctrl63..text = number63,
                style:
                    const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
                keyboardType: TextInputType.number,
                maxLength: 1,
                decoration: const InputDecoration(
                  counterText: "",
                ),
              ),
              TextField(
                controller: ctrl64..text = number64,
                style:
                    const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
                keyboardType: TextInputType.number,
                maxLength: 1,
                decoration: const InputDecoration(
                  counterText: "",
                ),
              ),
              TextField(
                controller: ctrl65..text = number65,
                style:
                    const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
                keyboardType: TextInputType.number,
                maxLength: 1,
                decoration: const InputDecoration(
                  counterText: "",
                ),
              ),
              TextField(
                controller: ctrl66..text = number66,
                style:
                    const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
                keyboardType: TextInputType.number,
                maxLength: 1,
                decoration: const InputDecoration(
                  counterText: "",
                ),
              ),
              TextField(
                controller: ctrl67..text = number67,
                style:
                    const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
                keyboardType: TextInputType.number,
                maxLength: 1,
                decoration: const InputDecoration(
                  counterText: "",
                ),
              ),
              TextField(
                controller: ctrl68..text = number68,
                style:
                    const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
                keyboardType: TextInputType.number,
                maxLength: 1,
                decoration: const InputDecoration(
                  counterText: "",
                ),
              ),
              TextField(
                controller: ctrl69..text = number69,
                style:
                    const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
                keyboardType: TextInputType.number,
                maxLength: 1,
                decoration: const InputDecoration(
                  counterText: "",
                ),
              ),
              TextField(
                controller: ctrl70..text = number70,
                style:
                    const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
                keyboardType: TextInputType.number,
                maxLength: 1,
                decoration: const InputDecoration(
                  counterText: "",
                ),
              ),
              TextField(
                controller: ctrl71..text = number71,
                style:
                    const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
                keyboardType: TextInputType.number,
                maxLength: 1,
                decoration: const InputDecoration(
                  counterText: "",
                ),
              ),
              TextField(
                controller: ctrl72..text = number72,
                style:
                    const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
                keyboardType: TextInputType.number,
                maxLength: 1,
                decoration: const InputDecoration(
                  counterText: "",
                ),
              ),
              TextField(
                controller: ctrl73..text = number73,
                style:
                    const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
                keyboardType: TextInputType.number,
                maxLength: 1,
                decoration: const InputDecoration(
                  counterText: "",
                ),
              ),
              TextField(
                controller: ctrl74..text = number74,
                style:
                    const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
                keyboardType: TextInputType.number,
                maxLength: 1,
                decoration: const InputDecoration(
                  counterText: "",
                ),
              ),
              TextField(
                controller: ctrl75..text = number75,
                style:
                    const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
                keyboardType: TextInputType.number,
                maxLength: 1,
                decoration: const InputDecoration(
                  counterText: "",
                ),
              ),
              TextField(
                controller: ctrl76..text = number76,
                style:
                    const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
                keyboardType: TextInputType.number,
                maxLength: 1,
                decoration: const InputDecoration(
                  counterText: "",
                ),
              ),
              TextField(
                controller: ctrl77..text = number77,
                style:
                    const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
                keyboardType: TextInputType.number,
                maxLength: 1,
                decoration: const InputDecoration(
                  counterText: "",
                ),
              ),
              TextField(
                controller: ctrl78..text = number78,
                style:
                    const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
                keyboardType: TextInputType.number,
                maxLength: 1,
                decoration: const InputDecoration(
                  counterText: "",
                ),
              ),
              TextField(
                controller: ctrl79..text = number79,
                style:
                    const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
                keyboardType: TextInputType.number,
                maxLength: 1,
                decoration: const InputDecoration(
                  counterText: "",
                ),
              ),
              TextField(
                controller: ctrl80..text = number80,
                style:
                    const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
                keyboardType: TextInputType.number,
                maxLength: 1,
                decoration: const InputDecoration(
                  counterText: "",
                ),
              ),
              TextField(
                controller: ctrl81..text = number81,
                style:
                    const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
                keyboardType: TextInputType.number,
                maxLength: 1,
                decoration: const InputDecoration(
                  counterText: "",
                ),
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
                  final response = await http.get(
                      Uri.parse("https://296d-50-100-148-118.ngrok.io/upload"));
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
                  });
                },
                child: const Icon(Icons.edit),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              child: FloatingActionButton(
                onPressed: () async {
                  number = ctrl1.text;
                  number2 = ctrl2.text;
                  number3 = ctrl3.text;
                  number4 = ctrl4.text;
                  number5 = ctrl5.text;
                  number6 = ctrl6.text;
                  number7 = ctrl7.text;
                  number8 = ctrl8.text;
                  number9 = ctrl9.text;
                  number10 = ctrl10.text;
                  number11 = ctrl11.text;
                  number12 = ctrl12.text;
                  number13 = ctrl13.text;
                  number14 = ctrl14.text;
                  number15 = ctrl15.text;
                  number16 = ctrl16.text;
                  number17 = ctrl17.text;
                  number18 = ctrl18.text;
                  number19 = ctrl19.text;
                  number20 = ctrl20.text;
                  number21 = ctrl21.text;
                  number22 = ctrl22.text;
                  number23 = ctrl23.text;
                  number24 = ctrl24.text;
                  number25 = ctrl25.text;
                  number26 = ctrl26.text;
                  number27 = ctrl27.text;
                  number28 = ctrl28.text;
                  number29 = ctrl29.text;
                  number30 = ctrl30.text;
                  number31 = ctrl31.text;
                  number32 = ctrl32.text;
                  number33 = ctrl33.text;
                  number34 = ctrl34.text;
                  number35 = ctrl35.text;
                  number36 = ctrl36.text;
                  number37 = ctrl37.text;
                  number38 = ctrl38.text;
                  number39 = ctrl39.text;
                  number40 = ctrl40.text;
                  number41 = ctrl41.text;
                  number42 = ctrl42.text;
                  number43 = ctrl43.text;
                  number44 = ctrl44.text;
                  number45 = ctrl45.text;
                  number46 = ctrl46.text;
                  number47 = ctrl47.text;
                  number48 = ctrl48.text;
                  number49 = ctrl49.text;
                  number50 = ctrl50.text;
                  number51 = ctrl51.text;
                  number52 = ctrl52.text;
                  number53 = ctrl53.text;
                  number54 = ctrl54.text;
                  number55 = ctrl55.text;
                  number56 = ctrl56.text;
                  number57 = ctrl57.text;
                  number58 = ctrl58.text;
                  number59 = ctrl59.text;
                  number60 = ctrl60.text;
                  number61 = ctrl61.text;
                  number62 = ctrl62.text;
                  number63 = ctrl63.text;
                  number64 = ctrl64.text;
                  number65 = ctrl65.text;
                  number66 = ctrl66.text;
                  number67 = ctrl67.text;
                  number68 = ctrl68.text;
                  number69 = ctrl69.text;
                  number70 = ctrl70.text;
                  number71 = ctrl71.text;
                  number72 = ctrl72.text;
                  number73 = ctrl73.text;
                  number74 = ctrl74.text;
                  number75 = ctrl75.text;
                  number76 = ctrl76.text;
                  number77 = ctrl77.text;
                  number78 = ctrl78.text;
                  number79 = ctrl79.text;
                  number80 = ctrl80.text;
                  number81 = ctrl81.text;
                  final response = await http.post(
                      Uri.parse('https://296d-50-100-148-118.ngrok.io/upload2'),
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
                      'https://296d-50-100-148-118.ngrok.io/upload2'));
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
                  });
                },
                child: const Icon(Icons.check),
              ),
            )
          ],
        ));
  }
}
