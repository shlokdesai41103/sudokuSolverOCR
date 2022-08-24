import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
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

  // @override
  // void initState() {
  //   super.initState();
  //   loading = true;
  //   Services.getNumbers().then((numbers) {
  //     setState(() {
  //       _nums = numbers;
  //       loading = false;
  //     });
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // title: Text(loading ? 'Loading...' : 'Numbers'),
        title: const Text('Numbers'),
      ),
      // body: Container(
      //   color: Colors.white,
      //   child: ListView.builder(
      //     itemBuilder: (context, index) {
      //       Numbers number = _nums[0];
      //       return ListTile(
      //         title: Text((number.val).toString()),
      //       );
      //     },
      //     itemCount: _nums.length,
      //   ),
      // ),
      body: Center(
        child: GridView.count(
          shrinkWrap: true,
          padding: const EdgeInsets.all(10),
          crossAxisCount: 9,
          crossAxisSpacing: 5,
          mainAxisSpacing: 5,
          children: [
            TextFormField(
              initialValue: number,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            TextFormField(
              initialValue: number2,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            TextFormField(
              initialValue: number3,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            TextFormField(
              initialValue: number4,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            TextFormField(
              initialValue: number5,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            TextFormField(
              initialValue: number6,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            TextFormField(
              initialValue: number7,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            TextFormField(
              initialValue: number8,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            TextFormField(
              initialValue: number9,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            TextFormField(
              initialValue: number10,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            TextFormField(
              initialValue: number11,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            TextFormField(
              initialValue: number12,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            TextFormField(
              initialValue: number13,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            TextFormField(
              initialValue: number14,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            TextFormField(
              initialValue: number15,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            TextFormField(
              initialValue: number16,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            TextFormField(
              initialValue: number17,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            TextFormField(
              initialValue: number18,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            TextFormField(
              initialValue: number19,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            TextFormField(
              initialValue: number20,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            TextFormField(
              initialValue: number21,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            TextFormField(
              initialValue: number22,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            TextFormField(
              initialValue: number23,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            TextFormField(
              initialValue: number24,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            TextFormField(
              initialValue: number25,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            TextFormField(
              initialValue: number26,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            TextFormField(
              initialValue: number27,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            TextFormField(
              initialValue: number28,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            TextFormField(
              initialValue: number29,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            TextFormField(
              initialValue: number30,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            TextFormField(
              initialValue: number31,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            TextFormField(
              initialValue: number32,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            TextFormField(
              initialValue: number33,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            TextFormField(
              initialValue: number34,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            TextFormField(
              initialValue: number35,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            TextFormField(
              initialValue: number36,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            TextFormField(
              initialValue: number37,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            TextFormField(
              initialValue: number38,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            TextFormField(
              initialValue: number39,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            TextFormField(
              initialValue: number40,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            TextFormField(
              initialValue: number41,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            TextFormField(
              initialValue: number42,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            TextFormField(
              initialValue: number43,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            TextFormField(
              initialValue: number44,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            TextFormField(
              initialValue: number45,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            TextFormField(
              initialValue: number46,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            TextFormField(
              initialValue: number47,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            TextFormField(
              initialValue: number48,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            TextFormField(
              initialValue: number49,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            TextFormField(
              initialValue: number50,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            TextFormField(
              initialValue: number51,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            TextFormField(
              initialValue: number52,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            TextFormField(
              initialValue: number53,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            TextFormField(
              initialValue: number54,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            TextFormField(
              initialValue: number55,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            TextFormField(
              initialValue: number56,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            TextFormField(
              initialValue: number57,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            TextFormField(
              initialValue: number58,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            TextFormField(
              initialValue: number59,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            TextFormField(
              initialValue: number60,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            TextFormField(
              initialValue: number61,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            TextFormField(
              initialValue: number62,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            TextFormField(
              initialValue: number63,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            TextFormField(
              initialValue: number64,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            TextFormField(
              initialValue: number65,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            TextFormField(
              initialValue: number66,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            TextFormField(
              initialValue: number67,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            TextFormField(
              initialValue: number68,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            TextFormField(
              initialValue: number69,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            TextFormField(
              initialValue: number70,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            TextFormField(
              initialValue: number71,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            TextFormField(
              initialValue: number72,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            TextFormField(
              initialValue: number73,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            TextFormField(
              initialValue: number74,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            TextFormField(
              initialValue: number75,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            TextFormField(
              initialValue: number76,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            TextFormField(
              initialValue: number77,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            TextFormField(
              initialValue: number78,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            TextFormField(
              initialValue: number79,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            TextFormField(
              initialValue: number80,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            TextFormField(
              initialValue: number81,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final response = await http
              .get(Uri.parse("https://d4a9-50-100-148-118.ngrok.io/upload"));
          final decoded = json.decode(response.body) as Map<String, dynamic>;
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
      ),
    );
  }
}
