import 'package:flutter/material.dart';

class Exe13Counter extends StatelessWidget {

  int counter;

  Exe13Counter(this.counter);

  @override
  Widget build(BuildContext context) {

    return Text("$counter", style: TextStyle(
      fontSize: 48,
        color:counter < 0 ? Colors.red : counter == 0 ?  Colors.black : Colors.green),

    );
  }
}


criabotoes(){

}
 const casa = criabotoes;
