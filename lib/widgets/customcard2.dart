import 'package:flutter/material.dart';

class Customcard2 extends StatefulWidget {
  const Customcard2({super.key});

  @override
  State<Customcard2> createState() => _Customcard2State();
}

class _Customcard2State extends State<Customcard2> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(width: 2, color: Colors.black),
      ),
      margin: const EdgeInsets.all(10),
      child: Column(
        children: [
          Container(
            //title
            padding: const EdgeInsets.fromLTRB(15, 15, 15, 0),
            child: TextFormField(
              autovalidateMode: AutovalidateMode.always,
              maxLength: 30,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Title',
              ),
            ),
          ),
          Container(
            //description
            padding: const EdgeInsets.fromLTRB(15, 15, 15, 0),
            child: TextFormField(
              autovalidateMode: AutovalidateMode.always,
              maxLength: 100,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Description',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
