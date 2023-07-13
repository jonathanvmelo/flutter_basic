import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: DrawerHeader(
            child: ListView(
              children: [
                Column(
                  children: [
                    UserAccountsDrawerHeader(
                      accountName: Text("Jonathan"),
                      accountEmail: Text("jonathan.com"),
                      currentAccountPicture: CircleAvatar(),
                    ),
                    ListTile(
                      title:  Row(
                        children: [
                          Text(
                            'Exercicio 1',
                            style: TextStyle(
                              color: Colors.black38,
                            ),
                          ),
                          Spacer(),
                          IconButton(onPressed: (){
                            Navigator.of(context).pushNamed('/exe1');
                          }, icon: Icon(Icons.arrow_forward_ios, color: Colors.black38,))
                        ],
                      ),
                      onTap: () {
                      },

                    ),
                    ListTile(
                      title: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 15),
                            child: Icon(Icons.home),
                          ),

                          const Text(
                            'Exercicio 2',
                            style: TextStyle(
                              color: Colors.black38,
                            ),
                          ),
                          Spacer(),
                          IconButton(onPressed: (){
                            Navigator.of(context).pushNamed('/exe2');
                          }, icon: Icon(Icons.arrow_forward, color: Colors.black38,))
                        ],
                      ),
                    ),
                    ListTile(
                      title: const Text(
                        'Exercicio 3',
                        style: TextStyle(
                          color: Colors.black26,
                        ),
                      ),
                      onTap: () {
                        Navigator.of(context).pushNamed('/exe3');
                      },

                    ),
                    ListTile(
                      title: const Text(
                        'Exercicio 4',
                        style: TextStyle(
                          color: Colors.black26,
                        ),
                      ),
                      onTap: () {
                        Navigator.of(context).pushNamed('/exe4');
                      },
                    ),
                    ListTile(
                      title: const Text(
                        'Exercicio 5',
                        style: TextStyle(
                          color: Colors.black26,
                        ),
                      ),
                      onTap: () {
                        Navigator.of(context).pushNamed('/exe5');
                      },
                    ),
                    ListTile(
                      title: const Text(
                        'Exercicio 6',
                        style: TextStyle(
                          color: Colors.black26,
                        ),
                      ),
                      onTap: () {
                        Navigator.of(context).pushNamed('/exe6');
                      },
                    ),
                    ListTile(
                      title: const Text(
                        'Exercicio 7',
                        style: TextStyle(
                          color: Colors.black26,
                        ),
                      ),
                      onTap: () {
                        Navigator.of(context).pushNamed('/exe7');
                      },

                    ),
                  ],
                )
              ],
            )
        ),
      ),
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Home - App exercicios Flutter',
        ),
      ),
      body: Container(),

    );
  }
}
