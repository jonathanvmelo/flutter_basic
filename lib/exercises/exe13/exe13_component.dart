import 'package:flutter/material.dart';

class Exe13Counter extends StatelessWidget {

  int counter;

  Exe13Counter(this.counter);

  @override
  Widget build(BuildContext context) {

    return Text("$counter", style: TextStyle(
        color:counter >= 0 ? Colors.green : Colors.red ),);
  }
}


criabotoes(){

}
 const casa = criabotoes;
