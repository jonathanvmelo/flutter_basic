import 'package:flutter/material.dart';
import 'package:flutter_project/controllers/login_controller.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final formKey = GlobalKey<FormState>();
  bool _hidePass = true;
  bool inLouder = false;
  LoginController controller = LoginController();

  TextEditingController nameController = TextEditingController();
  TextEditingController passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 150, horizontal: 130),
        child: Form(
          key: formKey,
          child: Column(
            children: [
              Icon(Icons.people,
                  size: MediaQuery.of(context).size.height * 0.2),
              SizedBox(
                height: 35,
              ),
              TextFormField(
                controller: nameController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(),
                  ),
                  suffixIcon: Icon(Icons.person),
                  labelText: 'Name',
                ),
                validator: (String? value) {
                  return (value != null && value.contains('@'))
                      ? 'Do not use the @ char.'
                      : null;
                },
              ),
              SizedBox(
                height: 35,
              ),
              TextFormField(
                controller: passController,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(),
                    ),
                    labelText: "Password",
                    suffixIcon: IconButton(
                      icon: Icon(
                          _hidePass ? Icons.visibility : Icons.visibility_off),
                      onPressed: () {
                        setState(() {
                          _hidePass = !_hidePass;
                        });
                      },
                    )),
                obscureText: _hidePass,
                validator: (value) {
                  return (value!.isEmpty && value.contains('@'))
                      ? 'Do not use the @ char.'
                      : null;
                },
              ),
              SizedBox(height: 35),
              ElevatedButton(
                  onPressed: () async {
                    if (this.formKey.currentState!.validate()) {
                      controller.login = nameController.text;
                      controller.pass = passController.text;

                      if (await controller.auth()) {
                        Navigator.of(context).pushReplacementNamed('/home');
                      }
                    }
                  },
                  child: Text("Login"))
            ],
          ),
        ),
      ),
    );
  }
}
