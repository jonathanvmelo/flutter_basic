import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {

  final formKey = GlobalKey<FormState>();
  TextEditingController _nameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passController = TextEditingController();
  TextEditingController _confirmpassController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: formKey,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 32),
          child: Column(
            children: [
              SizedBox(height: 32,),
              Icon(Icons.people, size: 80,),
              SizedBox(height: 32,),
              Text("Crie a sua conta"),
              SizedBox(height: 32,),
              TextFormField(
                controller: _nameController,
                decoration: InputDecoration(label: Text("Nome"), suffixIcon: Icon(Icons.person)),
                validator: (value) {
                  if (value!.trim().isNotEmpty) return "Campo obrigatório";
                  if(value!.trim().length < 2) return "O campo nome deve ter pelo menos 2 caractéries";
                }
              ),
              SizedBox(height: 32,),
              TextFormField(
                  controller: _emailController,
                  decoration: InputDecoration(label: Text("Email"),suffixIcon: Icon(Icons.email_outlined)),
                  validator: (value) {
                    if (value!.trim().isNotEmpty) return "Campo obrigatório";
                    if(!value!.trim().contains("@")) return "O campo email deve conter @";
                  }
              ),
              SizedBox(height: 32,),
              TextFormField(
                  controller: _passController,
                  decoration: InputDecoration(label: Text("Senha"),suffixIcon: Icon(Icons.remove_red_eye)),
                  validator: (value) {
                    if (value!.trim().isNotEmpty) return "Campo obrigatório";
                    if(value!.trim().length < 4) return "A senha deve ter pelo menos 4 caractéries";
                  }
              ),
              SizedBox(height: 32,),
              TextFormField(
                  controller: _confirmpassController,
                  decoration: InputDecoration(label: Text("Confirme a senha"),suffixIcon: Icon(Icons.remove_red_eye)),
                  validator: (value) {
                    if (value!.trim().isNotEmpty) return "Campo obrigatório";
                    if(value!.trim() != _passController.text) return "As senhas devem ser iguuais";
                  }
              ),
              SizedBox(height: 32,),
              Column(
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                          child: ElevatedButton(onPressed: (){}, child: Text("Cadastrar")
                          )
                      ),
                    ],
                  ),
                  SizedBox(height: 16,),
                  TextButton(onPressed: (){
                    Navigator.of(context).pop();
                  }, child: Text("Voltar"))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
