import 'package:flutter/material.dart';

class Exe06 extends StatefulWidget {
  @override
  State<Exe06> createState() => _Exe06State();
}

class _Exe06State extends State<Exe06> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Exercício 6'),
        centerTitle: true,
      ),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(children: [
            const SizedBox(
              height: 130,
            ),
            TextFormField(
              decoration: const InputDecoration(border: OutlineInputBorder()),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text('Favor preencher o(s) campos em branco')));
                  return 'Campo obrigatório';
                }
                return null;
              },
            ),
            const SizedBox(
              height: 30,
            ),
            TextFormField(
              decoration: const InputDecoration(border: OutlineInputBorder()),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text('Favor preencher o(s) campos em branco')));
                  return 'Campo obrigatório';
                }
              },
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        FocusScope.of(context).requestFocus(FocusNode());
                        // If the form is valid, display a snackbar. In the real world,
                        // you'd often call a server or save the information in a database.
                        ScaffoldMessenger.of(context).showMaterialBanner(
                            MaterialBanner(
                                backgroundColor: Colors.black26,
                                contentTextStyle: const TextStyle(),
                                leading: const Icon(Icons.notifications),
                                content: const Text("Processando..."),
                                actions: [
                              TextButton(
                                  onPressed: () {
                                    ScaffoldMessenger.of(context)
                                        .hideCurrentMaterialBanner();
                                  },
                                  child: const Text('Cancelar'))
                            ]));
                      }
                    },
                    child: const Text('Login')),
                TextButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        FocusScope.of(context).requestFocus(FocusNode());
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            action: SnackBarAction(
                              label: 'Recuperar senha',
                              onPressed: () {},
                            ),
                            duration: Duration(seconds: 3),
                            content: Text('Esqueci a senha')));
                      }
                    },
                    child: const Text('Esqueci a senha')),
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
