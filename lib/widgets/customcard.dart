import 'package:flutter/material.dart';

class Customcard extends StatefulWidget {
  const Customcard({super.key});

  @override
  State<Customcard> createState() => _CustomcardState();
}

class _CustomcardState extends State<Customcard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        
      },
      child: Container(
        height: 100,
        width: double.infinity,
        decoration: BoxDecoration(
          border: Border.all(width: 2, color: Colors.black),
        ),
        margin: const EdgeInsets.all(10),
        child: const Text("my custom container"),
      ),
    );
  }
}
