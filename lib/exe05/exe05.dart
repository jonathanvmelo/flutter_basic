
import 'package:flutter/material.dart';

import '../componets/drawer/custom_drawer.dart';

class Exe05 extends StatefulWidget {


  @override
  State<Exe05> createState() => _Exe05State();
}

class _Exe05State extends State<Exe05> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      endDrawer: CustomDrawer(),
      body: SingleChildScrollView(
        child: Center(
           child: Column(
             children: [

               Image.network("https://img.elo7.com.br/product/zoom/3411F65/servico-de-montagem-de-arvores-de-natal-enfeite.jpg"),
               Row(
                 crossAxisAlignment: CrossAxisAlignment.center,
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   //Spacer(),
                   SizedBox(width: 650),
                Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ8WfU1PoK2zO3q763qiBOX9dDR3sCw-0OtxQ&usqp=CAU", scale: 0.5,),

              ],
                 )
             ],
           ),
        ),
      ),
    );
  }
}
