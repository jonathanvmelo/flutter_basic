import 'package:flutter/material.dart';
import 'package:flutter_project/exercises/exe13/exe13_component.dart';

class Exe13 extends StatefulWidget {
  const Exe13({super.key});

  @override
  State<Exe13> createState() => _Exe13State();
}

class _Exe13State extends State<Exe13> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Exe13Counter(counter),
           SizedBox(height: 20,),
           Row(
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
               IconButton(onPressed: () {
                 setState(() {
                   counter++;
                 });
               }, icon: Icon(Icons.add)),
               IconButton(onPressed: () {
                 setState(() {
                   counter--;
                 });
               }, icon: Icon(Icons.remove))
             ],
           )
          ],
        ),
      ),
    );
  }
}
