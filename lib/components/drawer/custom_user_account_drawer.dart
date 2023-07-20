import 'package:flutter/material.dart';
import 'package:flutter_project/models/User.dart';
import '../../controllers/theme_controller.dart';

class UserAccountDrawer extends StatelessWidget {
  late final User userModel;

  UserAccountDrawer({required this.userModel});
  @override
  Widget build(BuildContext context) {
    String initialLetterName = userModel.name[0];
    return UserAccountsDrawerHeader(
      accountName: Text(userModel.name),
      accountEmail: Text(userModel.email),
      currentAccountPicture: CircleAvatar(
        backgroundImage: userModel.imageUrl!.isNotEmpty ? NetworkImage(userModel.imageUrl!) : null,
        backgroundColor: ThemeController.instance.isDarkTheme ? Colors.black12 : Colors.black12,
        child: userModel.imageUrl!.isNotEmpty ? null : Text(initialLetterName),
      ),
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
