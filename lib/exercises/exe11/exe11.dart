import 'package:flutter/material.dart';
import 'package:flutter_project/exercises/exe11/exe11_user_model.dart';

import '../../models/User.dart';

class Exe11 extends StatelessWidget {
  final formKey = GlobalKey<FormState>();
  TextEditingController _nameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Exercício 11"),
        ),
        body: Form(
          key: formKey,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32),
            child: Column(
              children: [
                SizedBox(
                  height: 140,
                ),
                Column(
                  //mainAxisSize: MainAxisSize.max,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Expanded(child: Text("Bem vindo a tela de cadastro de usuário")),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Expanded(child: Text("Preencha as informações abaixo para iniciar o cadastro")),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    label: Text("Nome"),
                  ),
                  controller: _nameController,
                  validator: (value) {
                    if (value!.trim().isEmpty)
                      return "O nome é obrigatório";

                    if (value!.length < 2) return "O nome deve possuir pelo menos dois caracteres";
                  },
                ),
                SizedBox(
                  height: 32,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    label: Text("Email"),
                  ),
                  controller: _emailController,
                  validator: (value) {
                    RegExp regexValidation = RegExp(r'\S+@\S+\.\S+');
                    if (!regexValidation.hasMatch(value!)) {
                      return "E-mail inválido";
                    }
                  },
                ),
                SizedBox(
                  height: 32,
                ),
                Row(
                  children: [
                    Expanded(child: ElevatedButton(child: Text("Cadastrar"),
                      onPressed: (){
                        if (this.formKey.currentState!.validate()) {
                          UserModel userDetail = UserModel(name: _nameController.text, email: _emailController.text) as UserModel;
                          Navigator.of(context).pushNamed("/exe11_welcome", arguments: userDetail);
                        }
                      }, )
                    ),
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
