import 'package:flutter/material.dart';
class MyDrawer extends StatefulWidget {
  const MyDrawer({ Key? key }) : super(key: key);

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const UserAccountsDrawerHeader(
              accountName: Text(
                "User Name",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              accountEmail: Text(
                "username@gmail.com",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              currentAccountPicture: CircleAvatar(),
            ),
            ListTile(
              leading: const Icon(Icons.description),
              title: const Text('About Mistri'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.people),
              title: const Text('Register as Proffesional'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.share),
              title: const Text('Share Mistri'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.rate_review),
              title: const Text('Rate Us'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.calendar_view_month),
              title: const Text('Sheduled Booking'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Settings'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(
                Icons.logout,
              ),
              title: const Text('Logout'),
              onTap: () {},
            ),
          ],
        ),
      );
  }
}