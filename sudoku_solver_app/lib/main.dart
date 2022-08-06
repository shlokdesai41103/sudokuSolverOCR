import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'package:sudoku_solver_app/take_picture_screen.dart';

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
      theme: ThemeData(primarySwatch: Colors.deepOrange),
      home: const RootPage(),
    );
  }
}

class RootPage extends StatefulWidget {
  //Screen can be reloaded with something new
  const RootPage({Key? key}) : super(key: key);

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Sudoku Solver")),
      body: const Center(child: Text('Happiness Is.... Sudoku')),
      floatingActionButton: FloatingActionButton(
          onPressed: () async {
            await availableCameras().then((value) => Navigator.push(context,
                MaterialPageRoute(builder: (_) => CameraPage(cameras: value))));
          },
          child: const Icon(Icons.camera_alt)),
    );
  }
}
