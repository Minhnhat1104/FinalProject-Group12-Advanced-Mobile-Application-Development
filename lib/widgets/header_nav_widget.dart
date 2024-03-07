import 'package:flutter/material.dart';
import 'package:student_hub/constants/colors.dart';
import 'package:student_hub/widgets/drawer_nav_widget.dart';

class HeaderNavBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final Function()? onUserIconPressed;

  const HeaderNavBar({
    this.title = 'StudentHub',
    this.onUserIconPressed,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: tdNeonBlue,
      title: Text(
        title,
        style: TextStyle(color: tdWhite),
      ),
      actions: [
        IconButton(
          icon: Icon(Icons.person, color: tdWhite),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const UserSetting()),
            );
          },
        ),
      ],
    );
  }

  @override
  Size get preferredSize => AppBar().preferredSize;
}
