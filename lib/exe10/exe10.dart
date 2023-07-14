
import 'package:flutter/material.dart';
import 'package:flutter_project/componets/drawer/custom_drawer.dart';
import 'package:flutter_project/exe10/exe10_pag2.dart';

class  Exe10 extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Exercício 10"),
      ),
      endDrawer: CustomDrawer(),
      body: Center(
        child: Container(
          child: Text("Página 1", style: TextStyle(fontSize: 20))),
      ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          child: Row(
            children: [
              // IconButton(onPressed: () {
              //
              // },icon: Icon(Icons.arrow_back)),
              Spacer(flex: 1,),
              IconButton(onPressed: () {
                Navigator.of(context).pushNamed("/exe10pag2");

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
