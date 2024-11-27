import 'package:flutter/material.dart';
import '../utils/global_data.dart';
import '../pages/sign_up_page.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text(loggedInUserName ?? 'Guest'),
            accountEmail: Text(loggedInUserEmail ?? 'No Email'),
            currentAccountPicture: loggedInUserImage == null
                ? const CircleAvatar(child: Icon(Icons.person))
                : CircleAvatar(
                    backgroundImage: FileImage(loggedInUserImage!),
                  ),
          ),
          ListTile(
            title: const Text('Logout'),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const SignUpPage()),
              );
            },
          ),
        ],
      ),
    );
  }
}
