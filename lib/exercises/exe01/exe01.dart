import 'package:flutter/material.dart';

class Exe01 extends StatefulWidget {
  @override
  State<Exe01> createState() => _Exe01State();
}

class _Exe01State extends State<Exe01> {
  bool changeColor = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Exercício 1"),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "Flutter é legal!",
              style: TextStyle(fontSize: 50, color: changeColor ? Colors.blueAccent : Color.fromRGBO(43, 114, 69, 0.5019607843137255), decoration: TextDecoration.underline, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 50,),
            IconButton(
                icon: changeColor ? Icon(Icons.change_circle_outlined, color: Colors.green) : Icon(Icons.change_circle_outlined),
                onPressed: () {
                  setState(() {
                    changeColor = !changeColor;
                  });
                }),
          ],
        ),
      ),
      // bottomNavigationBar: CustomBottomBar(),
    );
  }
}
