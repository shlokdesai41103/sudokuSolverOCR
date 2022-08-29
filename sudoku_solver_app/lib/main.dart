import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:path/path.dart';
import 'edit_puzzle.dart';
import 'package:image_picker/image_picker.dart';
import 'package:http/http.dart' as http;

import 'loading.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  File? selectedImage;
  String? message = "";
  bool uploaded = false;
  bool loading = false;

  uploadImage() async {
    uploaded = true;
    setState(() => loading = true);
    final request = http.MultipartRequest(
        "POST", Uri.parse("https://42bb-50-100-148-118.ngrok.io/upload"));
    final headers = {"Content-type": "multipart/form-data"};
    request.files.add(http.MultipartFile('image',
        selectedImage!.readAsBytes().asStream(), selectedImage!.lengthSync(),
        filename: selectedImage!.path.split("/").last));
    request.headers.addAll(headers);
    final response = await request.send();
    http.Response res = await http.Response.fromStream(response);
    final resJson = jsonDecode(res.body);
    message = resJson['message'];
    if (message != null) {
      setState(() => loading = false);
    }
    // setState(() {});
  }

  Future getImage() async {
    final pickedImage =
        await ImagePicker().getImage(source: ImageSource.gallery);
    selectedImage = File(pickedImage!.path);
    setState(() {});
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

  @override
  Widget build(BuildContext context) {
    return loading
        ? const Loading()
        : Scaffold(
            appBar: AppBar(
              title: const Text("Sudoku Solver: Image Selection"),
            ),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  selectedImage == null
                      ? const Text(
                          "Please pick an image to upload",
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold),
                        )
                      : Image.file(selectedImage!),
                  TextButton.icon(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.blue),
                      ),
                      onPressed: uploadImage,
                      icon: const Icon(
                        Icons.upload_file,
                        color: Colors.white,
                      ),
                      label: const Text(
                        "Upload",
                        style: TextStyle(color: Colors.white),
                      ))
                ],
              ),
            ),
            floatingActionButton: Wrap(
              direction: Axis.horizontal,
              children: [
                Container(
                  margin: const EdgeInsets.all(10),
                  child: FloatingActionButton(
                    onPressed: getImage,
                    child: const Icon(Icons.add_a_photo),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(10),
                  child: FloatingActionButton(
                      onPressed: () {
                        if (uploaded == true) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const EditPuzzle()));
                        } else if (uploaded == false) {
                          showToast('Please upload an image');
                        }
                      },
                      child: const Icon(Icons.navigate_next)),
                )
              ],
            )
            // FloatingActionButton(
            //   onPressed: getImage,
            //   child: const Icon(Icons.add_a_photo),
            // ),
            );
  }
}
