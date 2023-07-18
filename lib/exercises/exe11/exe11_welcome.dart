import 'package:flutter/material.dart';
import 'package:flutter_project/exercises/exe11/exe11_user_model.dart';

class Exe11Welcome extends StatefulWidget {
  const Exe11Welcome({Key? key}) : super(key: key);

  @override
  State<Exe11Welcome> createState() => _Exe11WelcomeState();
}

class _Exe11WelcomeState extends State<Exe11Welcome> {
  bool _isIconVisible = false;

  void _loadIconAfterDelay() async {
    await Future.delayed(Duration(seconds: 2), () {
      setState(() {
        _isIconVisible = true;
      });
    });
  }

  @override
  void initState() {
    super.initState();
    _loadIconAfterDelay();
  }

  @override
  Widget build(BuildContext context) {
    final UserModel details = ModalRoute.of(context)!.settings.arguments as UserModel;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 120),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            AnimatedOpacity(
              duration: Duration(milliseconds: 1000),
              curve: Curves.bounceInOut,
              opacity: _isIconVisible ? 1.0 : 0.0,
              child: Icon(Icons.check_circle_outline, color: Colors.green, size: 50),
            ),
            SizedBox(
              height: 40,
            ),
            Text("Muito obrigado por se cadastrar em nosso sistema, ${details.name}."),
            SizedBox(
              height: 40,
            ),
            Expanded(child: Text("Um email de confirmação de cadastro foi enviado para o email: ${details.email}")),
            SizedBox(
              height: 40,
            ),
            TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  "Voltar",
                  style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                ))
          ],
        ),
      ),
    );
  }
}
