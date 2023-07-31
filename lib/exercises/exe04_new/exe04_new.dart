import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

enum Operations { plus, minus, divided, times }

class Exe04 extends StatefulWidget {
  const Exe04({super.key});

  @override
  State<Exe04> createState() => _Exe04State();
}

class _Exe04State extends State<Exe04> {
  final TextEditingController _controllerValue1 = TextEditingController();

  final TextEditingController _controllerValue2 = TextEditingController();

  double result = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Exercício 4'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                  label: Text("Valor 1"), border: OutlineInputBorder()),
              controller: _controllerValue1,
            ),
            const SizedBox(
              height: 30,
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                  label: Text("Valor 2"), border: OutlineInputBorder()),
              controller: _controllerValue2,
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                    onPressed: () {
                      setState(() {
                        _controllerValue1.text = '';
                        _controllerValue2.text = '';
                        result = 0;
                      });
                    },
                    child: const Text('AC')),
                const SizedBox(
                  width: 20,
                ),
                IconButton(
                  onPressed: () => _performOperation(Operations.plus),
                  icon: const Icon(Icons.add),
                ),
                const SizedBox(
                  width: 10,
                ),
                IconButton(
                  onPressed: () => _performOperation(Operations.minus),
                  icon: const Icon(Icons.remove),
                ),
                const SizedBox(
                  width: 10,
                ),
                IconButton(
                    onPressed: () => _performOperation(Operations.divided),
                    icon: const Icon(CupertinoIcons.divide)),
                const SizedBox(
                  width: 10,
                ),
                IconButton(
                  onPressed: () => _performOperation(Operations.times),
                  icon: const Icon(CupertinoIcons.multiply),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  ' =$result ',
                  style: const TextStyle(fontSize: 32),
                ),
              ],
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            ScaffoldMessenger.of(context).showMaterialBanner(MaterialBanner(
                backgroundColor: Colors.black26,
                contentTextStyle: const TextStyle(),
                leading: const Icon(Icons.notifications),
                content: const Text("Subscribe"),
                actions: [
                  TextButton(
                      onPressed: () {
                        ScaffoldMessenger.of(context)
                            .hideCurrentMaterialBanner();
                      },
                      child: const Text('Cancelar'))
                ]));
          },
          child: const Text("Open")),
    );
  }

  void _performOperation(Operations operation) {
    double value1 = double.tryParse(_controllerValue1.text) ?? 0;
    double value2 = double.tryParse(_controllerValue2.text) ?? 0;

    switch (operation) {
      case Operations.plus:
        result = value1 + value2;
        break;

      case Operations.minus:
        result = value1 - value2;
        break;
      case Operations.divided:
        result = value1 / value2;
        break;
      case Operations.times:
        result = value1 * value2;
        break;
    }
    _updateResult(result);
  }

  void _updateResult(double newValue) {
    setState(() {
      result = newValue;
    });
  }
}
