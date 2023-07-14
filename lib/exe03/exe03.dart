
import 'package:flutter/material.dart';
import 'package:flutter_project/componets/drawer/custom_drawer.dart';

class  Exe03 extends StatefulWidget {

  @override
  State<Exe03> createState() => _Exe03State();
}

class _Exe03State extends State<Exe03> {
  int _result = 0;

  _contadorMais() => _result < 0 ? 0: _result++;

  _contadorMenos() => _result <= 0 ? 0 : _result--;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Exercicio 3"),
      ),
      endDrawer: CustomDrawer(),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text("Contador: $_result"),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Row(
               mainAxisSize: MainAxisSize.min,
                children: [
                  ElevatedButton(onPressed: (){
                    setState(() {
                      _contadorMais();
                    });

                  },
                      child: Text("+")),
                  Padding(
                    padding: const EdgeInsets.only(left: 18),
                    child: ElevatedButton(onPressed: (){
                      setState(() {
                        _contadorMenos();
                      });

                    },
                        child: Text("-")),
                  ),
                ],
              ),
            )
          ],
        ),

      ),

    );
  }
}
