import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:random_color/random_color.dart';
import '../../components/drawer/custom_user_account_drawer.dart';
import '../../models/User.dart';
import '../../repositories/routes_repository.dart';


class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final RouteRepository routeRepository = RouteRepository();
  User user = User(name: "onathan", email: "john.doe@example.com");

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
            UserAccountDrawer(
              userModel: user,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                   children:  routeRepository.drawerItems.map((item) => item).toList(),

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


