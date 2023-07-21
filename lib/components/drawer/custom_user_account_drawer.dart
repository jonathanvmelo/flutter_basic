import 'package:flutter/material.dart';
import 'package:flutter_project/models/User.dart';
import '../../controllers/theme_controller.dart';

class UserAccountDrawer extends StatelessWidget {
  final User userModel;

  UserAccountDrawer({required this.userModel});

  Widget _buildAvatarImage() {
    String initialLetterName = userModel.name[0];

    return CircleAvatar(
      backgroundImage:
          userModel.imageUrl != null ? NetworkImage(userModel.imageUrl!) : null,
      backgroundColor: ThemeController.instance.isDarkTheme
          ? Colors.black12
          : Colors.black12,
      child: userModel.imageUrl == null ? Text(initialLetterName) : null,
    );
  }

  @override
  Widget build(BuildContext context) {
    return UserAccountsDrawerHeader(
      accountName: Text(userModel.name),
      accountEmail: Text(userModel.email),
      currentAccountPicture: _buildAvatarImage(),
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
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
        Colors.teal,
        Colors.black12,
      ])),
    );
  }
}
