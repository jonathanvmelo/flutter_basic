import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project/componets/drawer/side_menu.dart';

import 'info_card.dart';

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: 288,
          height: double.infinity,
          color: const Color(0xFF17203A),
          child: SafeArea(
            child: Column(
              children: [
                // SizedBox(
                //   height: 20,
                // ),
                // //InfoCard(name: "name", subTitle: "subTitle"),
                // Padding(
                //   padding: const EdgeInsets.only(left: 24, top: 32, bottom: 16),
                //   child: Text("Browse".toUpperCase(), style: Theme.of(context).textTheme.titleMedium!.copyWith(color: Colors.white38)),
                // ),
                // SideMenu(),

                //   child: DrawerHeader(
                //       child: ListView(
                //         children: [
                //           Column(
                //             children: [
                //               UserAccountsDrawerHeader(
                //                 accountName: Text("Jonathan"),
                //                 accountEmail: Text("jonathan.com"),
                //                 currentAccountPicture: CircleAvatar(
                //                   backgroundImage: AssetImage("assets/Eu.jpeg"),
                //                 ),
                //               ),
                //               ListTile(
                //                 title:  Row(
                //                   children: [
                //                     Text(
                //                       'Exercicio 1',
                //                       style: TextStyle(
                //                         color: Colors.black38,
                //                       ),
                //                     ),
                //                     Spacer(),
                //                     IconButton(onPressed: (){
                //                       Navigator.of(context).pushReplacementNamed('/exe1');
                //                     }, icon: Icon(Icons.arrow_forward_ios, color: Colors.black38,))
                //                   ],
                //                 ),
                //                 onTap: () {
                //                 },
                //
                //               ),
                //               ListTile(
                //                 title: Row(
                //                   children: [
                //                     Padding(
                //                       padding: const EdgeInsets.only(right: 15),
                //                       child: Icon(Icons.home),
                //                     ),
                //
                //                     const Text(
                //                       'Exercicio 2',
                //                       style: TextStyle(
                //                         color: Colors.black38,
                //                       ),
                //                     ),
                //                     Spacer(),
                //                     IconButton(onPressed: (){
                //                       Navigator.of(context).pushReplacementNamed('/exe2');
                //                     }, icon: Icon(Icons.arrow_forward, color: Colors.black38,))
                //                   ],
                //                 ),
                //               ),
                //               ListTile(
                //                 title: const Text(
                //                   'Exercicio 3',
                //                   style: TextStyle(
                //                     color: Colors.black26,
                //                   ),
                //                 ),
                //                 onTap: () {
                //                   Navigator.of(context).pushReplacementNamed('/exe3');
                //                 },
                //
                //               ),
                //               ListTile(
                //                 title: const Text(
                //                   'Exercicio 4',
                //                   style: TextStyle(
                //                     color: Colors.black26,
                //                   ),
                //                 ),
                //                 onTap: () {
                //                   Navigator.of(context).pushReplacementNamed('/exe4');
                //                 },
                //               ),
                //               ListTile(
                //                 title: const Text(
                //                   'Exercicio 5',
                //                   style: TextStyle(
                //                     color: Colors.black26,
                //                   ),
                //                 ),
                //                 onTap: () {
                //                   Navigator.of(context).pushReplacementNamed('/exe5');
                //                 },
                //               ),
                //               ListTile(
                //                 title: const Text(
                //                   'Exercicio 6',
                //                   style: TextStyle(
                //                     color: Colors.black26,
                //                   ),
                //                 ),
                //                 onTap: () {
                //                   Navigator.of(context).pushReplacementNamed('/exe6');
                //                 },
                //               ),
                //               ListTile(
                //                 title: const Text(
                //                   'Exercicio 7',
                //                   style: TextStyle(
                //                     color: Colors.black26,
                //                   ),
                //                 ),
                //                 onTap: () {
                //                   Navigator.of(context).pushReplacementNamed('/exe7');
                //                 },
                //               ),
                //               ListTile(
                //                 title: const Text(
                //                   'Exercicio 8',
                //                   style: TextStyle(
                //                     color: Colors.black26,
                //                   ),
                //                 ),
                //                 onTap: () {
                //                   Navigator.of(context).pushReplacementNamed('/exe8');
                //                 },
                //               ),
                //               ListTile(
                //                 title: const Text(
                //                   'Exercicio 9',
                //                   style: TextStyle(
                //                     color: Colors.black26,
                //                   ),
                //                 ),
                //                 onTap: () {
                //                   Navigator.of(context).pushReplacementNamed('/exe9');
                //                 },
                //               ),
                //               ListTile(
                //                 title: const Text(
                //                   'Exercicio 10',
                //                   style: TextStyle(
                //                     color: Colors.black26,
                //                   ),
                //                 ),
                //                 onTap: () {
                //                   Navigator.of(context).pushReplacementNamed('/exe10');
                //                 },
                //               ),
                //               ListTile(
                //                 title: const Text(
                //                   'Exercicio 11',
                //                   style: TextStyle(
                //                     color: Colors.black26,
                //                   ),
                //                 ),
                //                 onTap: () {
                //                   Navigator.of(context).pushReplacementNamed('/');
                //                 },
                //               ),
                //             ],
                //           )
                //         ],
                //       )
                //   ),
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
