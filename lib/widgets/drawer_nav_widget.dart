import 'package:flutter/material.dart';
import 'package:student_hub/constants/colors.dart';
import 'package:student_hub/screens/Profile/not_have_profile.dart';
import 'package:student_hub/screens/Profile/profile_input.dart';

class UserSetting extends StatelessWidget {
  const UserSetting({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        color: tdNeonBlue,
        child: Column(children: [
          DrawerHeader(child: Icon(Icons.favorite, size: 48, color: tdWhite)),
          Expanded(
            child: Column(
              children: [
                ListTile(
                  leading: Icon(Icons.home, color: tdWhite),
                  title: Text("H O M E", style: TextStyle(color: tdWhite)),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const NotHaveProfile()),
                    );
                  },
                ),
                ListTile(
                  leading: Icon(Icons.person, color: tdWhite),
                  title:
                      Text("P R O F I L E", style: TextStyle(color: tdWhite)),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ProfileInputCompany()),
                    );
                  },
                ),
                ListTile(
                  leading: Icon(Icons.settings, color: tdWhite),
                  title:
                      Text("S E T T I N G", style: TextStyle(color: tdWhite)),
                ),
                ListTile(
                  leading: Icon(Icons.logout, color: tdWhite),
                  title: Text("L O G O U T", style: TextStyle(color: tdWhite)),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              showModalBottomSheet<void>(
                context: context,
                builder: (BuildContext context) {
                  return SizedBox(
                    height: 200,
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          const Text('Modal BottomSheet'),
                          ElevatedButton(
                            child: const Text('Close BottomSheet'),
                            onPressed: () => Navigator.pop(context),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              );
            },
            child: Container(
              margin: EdgeInsets.fromLTRB(10, 0, 0, 40),
              child: Row(
                children: [
                  Icon(Icons.person, size: 40, color: tdWhite),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Hai Phan",
                          style: TextStyle(color: tdWhite, fontSize: 16),
                        ),
                        Text(
                          "C O M P A N Y",
                          style: TextStyle(
                            color: tdWhite,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ]),
      ),
    );
  }
}

class BottomSheetApp extends StatelessWidget {
  const BottomSheetApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorSchemeSeed: const Color(0xff6750a4),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(title: const Text('Bottom Sheet Sample')),
        body: const BottomSheetExample(),
      ),
    );
  }
}

class BottomSheetExample extends StatelessWidget {
  const BottomSheetExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        child: const Text('showModalBottomSheet'),
        onPressed: () {
          showModalBottomSheet<void>(
            context: context,
            builder: (BuildContext context) {
              return SizedBox(
                height: 200,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      const Text('Modal BottomSheet'),
                      ElevatedButton(
                        child: const Text('Close BottomSheet'),
                        onPressed: () => Navigator.pop(context),
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
