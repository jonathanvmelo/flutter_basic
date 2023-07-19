import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project/controllers/theme_controller.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {



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
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              otherAccountsPictures: [
                Switch(
                  value: ThemeController.instance.isDarkTheme,
                  activeTrackColor: Colors.teal,
                  activeColor: Colors.black12,
                  onChanged: (value) {
                  ThemeController.instance.changeTheme();
                  },
                ),
              ],
              accountName: Text("Jonathan"),
              decoration: BoxDecoration(gradient: LinearGradient(colors: [

                Colors.teal ,
                Colors.black12,
              ])),
              accountEmail: Text("Turma Flutter"),
              currentAccountPicture: CircleAvatar(
                  backgroundColor: ThemeController.instance.isDarkTheme ? Colors.black12 : Colors.black12,
                  child: Text("J")

              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    ListTile(
                      trailing: Icon(Icons.arrow_forward),
                      title: Text("Exercicio 1"),
                      onTap: () {
                        Navigator.of(context).pushNamed("/exe01");
                      },
                    ),
                    ListTile(
                      trailing: Icon(Icons.arrow_forward),
                      title: Text("Exercicio 2"),
                      onTap: () {
                        Navigator.of(context).pushNamed("/exe02");
                      },
                    ),
                    ListTile(
                      trailing: Icon(Icons.arrow_forward),
                      title: Text("Exercicio 3"),
                      onTap: () {
                        Navigator.of(context).pushNamed("/exe03");
                      },
                    ),
                    ListTile(
                      trailing: Icon(Icons.arrow_forward),
                      title: Text("Exercicio 4"),
                      onTap: () {
                        Navigator.of(context).pushNamed("/exe04");
                      },
                    ),
                    ListTile(
                      trailing: Icon(Icons.arrow_forward),
                      title: Text("Exercicio 5"),
                      onTap: () {
                        Navigator.of(context).pushNamed("/exe05");
                      },
                    ),
                    ListTile(
                      trailing: Icon(Icons.arrow_forward),
                      title: Text("Exercicio 6"),
                      onTap: () {
                        Navigator.of(context).pushNamed("/exe06");
                      },
                    ),
                    ListTile(
                      trailing: Icon(Icons.arrow_forward),
                      title: Text("Exercicio 7"),
                      onTap: () {
                        Navigator.of(context).pushNamed("/exe07");
                      },
                    ),
                    ListTile(
                      trailing: Icon(Icons.arrow_forward),
                      title: Text("Exercicio 8"),
                      onTap: () {
                        Navigator.of(context).pushNamed("/exe08");
                      },
                    ),
                    ListTile(
                      trailing: Icon(Icons.arrow_forward),
                      title: Text("Exercicio 9"),
                      onTap: () {
                        Navigator.of(context).pushNamed("/exe09");
                      },
                    ),
                    ListTile(
                      trailing: Icon(Icons.arrow_forward),
                      title: Text("Exercicio 10"),
                      onTap: () {
                        Navigator.of(context).pushNamed("/exe10");
                      },
                    ),
                    ListTile(
                      trailing: Icon(Icons.arrow_forward),
                      title: Text("Exercicio 11"),
                      onTap: () {
                        Navigator.of(context).pushNamed("/exe11");
                      },
                    ),
                    ListTile(
                      trailing: Icon(Icons.arrow_forward),
                      title: Text("Exercicio 11"),
                      onTap: () {
                        Navigator.of(context).pushNamed("/exe11");
                      },
                    ),
                    ListTile(
                      trailing: Icon(Icons.arrow_forward),
                      title: Text("Exercicio 11"),
                      onTap: () {
                        Navigator.of(context).pushNamed("/exe11");
                      },
                    ),
                    ListTile(
                      trailing: Icon(Icons.arrow_forward),
                      title: Text("Exercicio 11.1"),
                      onTap: () {
                        Navigator.of(context).pushNamed("/exe11_1");
                      },
                    ),
                  ],
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
