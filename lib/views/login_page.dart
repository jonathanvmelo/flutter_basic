import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String? _login;

  String? _pass;

  final formKey = GlobalKey<FormState>();

  bool _hidePass = true;

  ValueNotifier<bool> inLouder = ValueNotifier<bool>(false);

  TextEditingController nameController = TextEditingController();

  TextEditingController passController = TextEditingController();

  Future<bool> auth() async {
    inLouder.value = true;
    await Future.delayed(Duration(seconds: 3));
    inLouder.value = false;
    return _login == "admin" && _pass == '123';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 150, horizontal: 130),
        child: Column(
          children: [
            Icon(Icons.people, size:MediaQuery.of(context).size.height * 0.2),
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
              obscureText: true,
              validator: (value) {
                return (value!.isEmpty && value.contains('@'))
                    ? 'Do not use the @ char.'
                    : null;
              },
            ),
            SizedBox(height: 35),
            ElevatedButton(
                onPressed: () {
                  if (this.formKey.currentState!.validate()) {
                    Navigator.of(context).pushReplacementNamed('/home');
                  }
                },
                child: Text("Login"))
          ],
        ),
      ),
    );
  }
}
