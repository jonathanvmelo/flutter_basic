import 'package:flutter/material.dart';
import 'package:flutter_project/controllers/login_controller.dart';

import '../../widgets/custom_text_field.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final formKey = GlobalKey<FormState>();
  bool _hidePass = true;
  bool inLouder = false;
  final LoginController controller = LoginController();

  TextEditingController nameController = TextEditingController();
  TextEditingController passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(begin: Alignment.centerLeft, colors: [
          Colors.teal,
          Colors.black87,
        ])),
        padding: EdgeInsets.symmetric(vertical: 100, horizontal: 30),
        child: Form(
          key: formKey,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: Icon(Icons.people, size: MediaQuery.of(context).size.height * 0.1),
              ),
              SizedBox(
                height: 35,
              ),
              Expanded(
                  child: CustomTextField(
                suffixIcon: Icon(Icons.person),
                textLabel: "Nome",
                validator: (value) {
                  if (value!.trim().isEmpty) {
                    return "Erro";
                  }
                },
                controller: nameController,
              )),
              SizedBox(
                height: 35,
              ),
              Expanded(
                  child: CustomTextField(
                controller: passController,
                textLabel: "Password",
                suffixIcon: Icon(_hidePass ? Icons.visibility : Icons.visibility_off),
                validator: (value) {
                  return (value!.isEmpty && value.contains('@')) ? 'Do not use the @ char.' : null;
                },
                onPressed: () {
                  setState(() {
                    _hidePass = !_hidePass;
                  });
                },
                obscureText: _hidePass,
              )),
              SizedBox(height: 35),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                        onPressed: () async {
                          if (this.formKey.currentState!.validate()) {
                            controller.login = nameController.text;
                            controller.pass = passController.text;

                            if (await controller.auth()) {
                              Navigator.of(context).pushReplacementNamed('/home');
                            }
                          }
                        },
                        child: Text("Login")),
                  ),
                ],
              ),
              SizedBox(
                height: 25,
              ),
              Text("Ou entre com"),
              SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.facebook,
                    color: Colors.blueAccent,
                  ),
                  Icon(Icons.gpp_good_outlined)
                ],
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Não tem conta?"),
                  TextButton(
                      onPressed: () {},
                      child: TextButton(
                          onPressed: () {
                            Navigator.of(context).pushNamed("/register");
                          },
                          child: Text("Cadastre-se"))),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
