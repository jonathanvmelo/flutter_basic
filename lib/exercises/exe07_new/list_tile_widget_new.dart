import 'package:flutter/material.dart';

class ListTileWidget extends StatelessWidget {
  final String imageUrl;
  final String name;
  final VoidCallback? onPressed;

  ListTileWidget({
    required this.imageUrl,
    required this.name,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: NetworkImage(imageUrl),
          radius: 25,
        ),
        title: Text(name),
        trailing: IconButton(
          icon: Icon(Icons.more_vert),
          onPressed: onPressed,
        ),
      ),
    );
  }
}
