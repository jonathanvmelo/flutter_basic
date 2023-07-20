import 'package:flutter/material.dart';

class Exe12Confirmation extends StatelessWidget {
  const Exe12Confirmation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.question_mark, size: 80,),
            SizedBox(height: 50,),
            Text("Deseja realmente excluir?"),
            SizedBox(height: 50,),
            ElevatedButton(onPressed: () {
              Navigator.of(context).pop(true);
            }, child: Text("Sim")),
            SizedBox(height: 50,),
            ElevatedButton(onPressed: () {
                Navigator.of(context).pop(false);
            }, child: Text("Não"))
          ],
        ),
      ),
    );
  }
}

