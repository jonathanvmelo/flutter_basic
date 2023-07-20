import 'package:flutter/material.dart';

class DrawerTileItem extends StatelessWidget {
  final String title;
  final IconData? icon;
  final String route;

  DrawerTileItem({required this.title, required this.icon, required this.route});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon),
      title: Text(title),
      trailing: Icon(icon),
      onTap: ()=> Navigator.of(context).pushNamed(route),
    );
  }
}
