import 'package:flutter/material.dart';
import 'package:flutter_project/componets/CustomScaffold.dart';

import '../componets/customAppBar.dart';

class Exe06 extends StatelessWidget {

  final formKey = GlobalKey<FormState>();
  TextEditingController nomeUsuario = TextEditingController();
  TextEditingController senha = TextEditingController();



  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
        title: "Exercício 6",
        appBarColor: Color(0xFF021122),
        child: Container(
          //color: Color(0xFF021122),
         child: Center(
           child: Column(
             children: [
               Image.asset("assets/logo.png"),
               Form(key: formKey, child: Column(
                 children: [
                   Padding(
                     padding: const EdgeInsets.all(40.0),
                     child: TextFormField(
                       decoration: InputDecoration(labelText: 'Usuário',
                         suffixIcon: Icon(Icons.person),
                         border: OutlineInputBorder(borderSide: BorderSide(color: Colors.white)
                         )
                        ),
                        controller: nomeUsuario,

                       validator: (value){
                          if(value!.trim().isEmpty){
                            return "Campo obrigatório";
                          }
                       },
                     ),
                   ),
                   Padding(
                     padding: const EdgeInsets.all(40.0),
                     child: TextFormField(
                       decoration: InputDecoration(labelText: 'Senha',
                           suffixIcon: Icon(Icons.remove_red_eye),
                       border: OutlineInputBorder(borderSide: BorderSide(color: Colors.white)

                       )),

                       controller: senha,
                       validator: (value){
                         if(value!.trim().isEmpty){
                           return "Campo obrigatório";
                         }
                         if(value!.trim().length >12){
                           return "A senha deve ter apenas 12 caractéres";
                         }
                       },
                     ),
                   ),
                   Padding(
                     padding: const EdgeInsets.all(20.0),
                     child: Row(
                       children: [
                         TextButton(onPressed: (){
                           if(formKey.currentState!.validate());
                         }, child: Text("Login")),
                         Spacer(),
                         TextButton(onPressed: (){
                         }, child: Text("Esqueci minha senha")),
                       ],
                     ),

                   ),
                   Padding(
                     padding: const EdgeInsets.only(top: 30),
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: [
                         TextButton(onPressed: (){
                         }, child: Text("Ainda não tem conta? Clique aqui")),
                       ],
                     ),
                   )
                 ],
               )),
                
             ],
           ),
         ),
        )
    );
  }
}
