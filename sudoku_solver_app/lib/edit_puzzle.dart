import 'dart:io';
import 'package:flutter/material.dart';
import 'numbers.dart';
import 'Services.dart';

class EditPuzzle extends StatefulWidget {
  const EditPuzzle({Key? key}) : super(key: key);

  @override
  State<EditPuzzle> createState() => _EditPuzzleState();
}

class _EditPuzzleState extends State<EditPuzzle> {
  late List<Numbers> _nums;
  late bool loading;

  @override
  void initState() {
    super.initState();
    loading = true;
    Services.getNumbers().then((numbers) {
      setState(() {
        _nums = numbers;
        loading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(loading ? 'Loading...' : 'Numbers'),
      ),
      body: Container(
        color: Colors.white,
        child: ListView.builder(
          itemBuilder: (context, index) {
            Numbers number = _nums[0];
            return ListTile(
              title: Text((number.val).toString()),
            );
          },
          itemCount: _nums.length,
        ),
      ),
    );
  }
}
