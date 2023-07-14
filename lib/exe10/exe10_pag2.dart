
import 'package:flutter/material.dart';

class  Exe10Pag2 extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Exercício 10"),
      ),
      body: Center(
        child: Container(
          child: Text("Página 2", style: TextStyle(fontSize: 20),)),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        child: Row(
          children: [
            IconButton(onPressed: () {
                Navigator.of(context).pop();
            },icon: Icon(Icons.arrow_back)),
            Spacer(flex: 1,),
            IconButton(onPressed: () {

            },icon: Icon(Icons.arrow_forward)),
            // SizedBox(
            //   width: 150,
            // )
          ],
        ),
      ) ,
    );
  }
}
