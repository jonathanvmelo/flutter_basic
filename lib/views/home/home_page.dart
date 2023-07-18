import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Home - App exercicios Flutter',
        ),
      ),
      drawer: Drawer(

        child: Column(
          children: [
            UserAccountsDrawerHeader(
                accountName: Text("Jonathan"),
                accountEmail: Text("Turma Flutter"),
                currentAccountPicture: CircleAvatar()),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [

                    ListTile(
                      trailing: Icon(Icons.arrow_forward),
                      title: Text("Exercicio 1"),
                      onTap: (){
                        Navigator.of(context).pushNamed("/exe01");
                      },
                    ),
                    ListTile(
                      trailing: Icon(Icons.arrow_forward),
                      title: Text("Exercicio 2"),
                      onTap: (){
                        Navigator.of(context).pushNamed("/exe02");
                      },
                    ),
                    ListTile(
                      trailing: Icon(Icons.arrow_forward),
                      title: Text("Exercicio 3"),
                      onTap: (){
                        Navigator.of(context).pushNamed("/exe03");
                      },
                    ),
                    ListTile(
                      trailing: Icon(Icons.arrow_forward),
                      title: Text("Exercicio 4"),
                      onTap: (){
                        Navigator.of(context).pushNamed("/exe04");
                      },
                    ),
                    ListTile(
                      trailing: Icon(Icons.arrow_forward),
                      title: Text("Exercicio 5"),
                      onTap: (){
                        Navigator.of(context).pushNamed("/exe05");
                      },
                    ),
                    ListTile(
                      trailing: Icon(Icons.arrow_forward),
                      title: Text("Exercicio 6"),
                      onTap: (){
                        Navigator.of(context).pushNamed("/exe06");
                      },
                    ),
                    ListTile(
                      trailing: Icon(Icons.arrow_forward),
                      title: Text("Exercicio 7"),
                      onTap: (){
                        Navigator.of(context).pushNamed("/exe07");
                      },
                    ),
                    ListTile(
                      trailing: Icon(Icons.arrow_forward),
                      title: Text("Exercicio 8"),
                      onTap: (){
                        Navigator.of(context).pushNamed("/exe08");
                      },
                    ),
                    ListTile(
                      trailing: Icon(Icons.arrow_forward),
                      title: Text("Exercicio 9"),
                      onTap: (){
                        Navigator.of(context).pushNamed("/exe9");
                      },
                    ),
                    ListTile(
                      trailing: Icon(Icons.arrow_forward),
                      title: Text("Exercicio 10"),
                      onTap: (){
                        Navigator.of(context).pushNamed("/exe10");
                      },
                    ),
                    ListTile(
                      trailing: Icon(Icons.arrow_forward),
                      title: Text("Exercicio 11"),
                      onTap: (){
                        Navigator.of(context).pushNamed("/exe11");
                      },
                    ),
                    ListTile(
                      trailing: Icon(Icons.arrow_forward),
                      title: Text("Exercicio 11"),
                      onTap: (){
                        Navigator.of(context).pushNamed("/exe11");
                      },
                    ),
                    ListTile(
                      trailing: Icon(Icons.arrow_forward),
                      title: Text("Exercicio 11"),
                      onTap: (){
                        Navigator.of(context).pushNamed("/exe11");
                      },
                    ),
                    ListTile(
                      trailing: Icon(Icons.arrow_forward),
                      title: Text("Exercicio 12"),
                      onTap: (){
                        Navigator.of(context).pushNamed("/exe01");
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


