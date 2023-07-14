import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InfoCard extends StatelessWidget {


  final String name;
  final String subTitle;


  InfoCard({required this.name, required this.subTitle});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        child: Image.asset("assets/avaters/Eu.jpeg"),
        backgroundColor: Colors.transparent,
      ),
      title: Text(name, style: const TextStyle(color: Colors.white, fontSize: 18),),
      subtitle: Text(subTitle, style: const TextStyle(color: Colors.white54, fontSize: 10),),

    );
  }
}