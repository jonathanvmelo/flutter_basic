import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../components/drawer/custom_user_account_drawer.dart';
import '../../models/User.dart';
import '../../repositories/routes_repository.dart';


class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final RouteRepository routeRepository = RouteRepository();
  User user = User(name: "Jonathan", email: "john.doe@example.com");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        centerTitle: true,
        title: Text(
          'Home - App exercicios Flutter',
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountDrawer(userModel: user),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                   children:  routeRepository.drawerItems.map((item) => item).toList(),

                  //
                  //
                  //   CustomListTileDrawer(
                  //     title: Text("Exercício 1"),
                  //     trailing: Icon(Icons.arrow_forward),
                  //     onTap: () {
                  //       Navigator.of(context).pushNamed("/exe01");
                  //     },
                  //   ),
                  //   CustomListTileDrawer(
                  //     title: Text("Exercício 2"),
                  //     trailing: Icon(Icons.arrow_forward),
                  //     onTap: () {
                  //       Navigator.of(context).pushNamed("/exe02");
                  //     },
                  //   ),
                  //   ListTile(
                  //     trailing: Icon(Icons.arrow_forward),
                  //     title: Text("Exercicio 3"),
                  //     onTap: () {
                  //       Navigator.of(context).pushNamed("/exe03");
                  //     },
                  //   ),
                  //   ListTile(
                  //     trailing: Icon(Icons.arrow_forward),
                  //     title: Text("Exercicio 4"),
                  //     onTap: () {
                  //       Navigator.of(context).pushNamed("/exe04");
                  //     },
                  //   ),
                  //   ListTile(
                  //     trailing: Icon(Icons.arrow_forward),
                  //     title: Text("Exercicio 5"),
                  //     onTap: () {
                  //       Navigator.of(context).pushNamed("/exe05");
                  //     },
                  //   ),
                  //   ListTile(
                  //     trailing: Icon(Icons.arrow_forward),
                  //     title: Text("Exercicio 6"),
                  //     onTap: () {
                  //       Navigator.of(context).pushNamed("/exe06");
                  //     },
                  //   ),
                  //   ListTile(
                  //     trailing: Icon(Icons.arrow_forward),
                  //     title: Text("Exercicio 7"),
                  //     onTap: () {
                  //       Navigator.of(context).pushNamed("/exe07");
                  //     },
                  //   ),
                  //   ListTile(
                  //     trailing: Icon(Icons.arrow_forward),
                  //     title: Text("Exercicio 8"),
                  //     onTap: () {
                  //       Navigator.of(context).pushNamed("/exe08");
                  //     },
                  //   ),
                  //   ListTile(
                  //     trailing: Icon(Icons.arrow_forward),
                  //     title: Text("Exercicio 9"),
                  //     onTap: () {
                  //       Navigator.of(context).pushNamed("/exe09");
                  //     },
                  //   ),
                  //   ListTile(
                  //     trailing: Icon(Icons.arrow_forward),
                  //     title: Text("Exercicio 10"),
                  //     onTap: () {
                  //       Navigator.of(context).pushNamed("/exe10");
                  //     },
                  //   ),
                  //   ListTile(
                  //     trailing: Icon(Icons.arrow_forward),
                  //     title: Text("Exercicio 11"),
                  //     onTap: () {
                  //       Navigator.of(context).pushNamed("/exe11");
                  //     },
                  //   ),
                  //   ListTile(
                  //     trailing: Icon(Icons.arrow_forward),
                  //     title: Text("Exercicio 12"),
                  //     onTap: () {
                  //       Navigator.of(context).pushNamed("/exe12");
                  //     },
                  //   ),
                  //   ListTile(
                  //     trailing: Icon(Icons.arrow_forward),
                  //     title: Text("Exercicio 11"),
                  //     onTap: () {
                  //       Navigator.of(context).pushNamed("/exe11");
                  //     },
                  //   ),
                  //   ListTile(
                  //     trailing: Icon(Icons.arrow_forward),
                  //     title: Text("Exercicio 11.1"),
                  //     onTap: () {
                  //       Navigator.of(context).pushNamed("/exe11_1");
                  //     },
                  //   ),
                  // ],
                ),
              ),
            ),
          ],
        ),
      ),
      body: Container(),
    );
  }
}


