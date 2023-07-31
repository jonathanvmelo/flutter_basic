import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Exe03 extends StatefulWidget {
  const Exe03({super.key});

  @override
  State<Exe03> createState() => _Exe03State();
}

class _Exe03State extends State<Exe03> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Exercício 3"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              child: Text(
            counter.toString(),
            style: TextStyle(
                fontSize: counter > 5
                    ? 38
                    : counter == 0
                        ? 28
                        : 38,
                color: counter > 0
                    ? Colors.green
                    : counter == 0
                        ? Colors.black
                        : Colors.red),
          )),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                  onPressed: () {
                    setState(() {
                      counter++;
                    });
                  },
                  icon: const Icon(CupertinoIcons.add)),
              const SizedBox(
                width: 10,
              ),
              IconButton(
                  onPressed: () {
                    setState(() {
                      counter--;
                    });
                  },
                  icon: const Icon(CupertinoIcons.minus))
            ],
          )
        ],
      ),
    );
  }
}
