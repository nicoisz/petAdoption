import 'package:flutter/material.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          const SizedBox(
            height: 80,
            child: DrawerHeader(
              child: Text(
                'Adoptar App',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                ),
              ),
            ),
          ),
          ListTile(
            onLongPress: () {
              print("press");
            },
            leading: const Icon(Icons.person),
            title: const Text('Profile'),
            trailing: const Icon(
              Icons.arrow_forward_ios_rounded,
              size: 14,
            ),
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text('Settings'),
            trailing: const Icon(
              Icons.arrow_forward_ios_rounded,
              size: 14,
            ),
            onLongPress: () {
              print("press");
            },
          ),
          //line
          ListTile(
            leading: const Icon(Icons.info_outline_rounded),
            title: const Text('Information'),
            trailing: const Icon(
              Icons.arrow_forward_ios_rounded,
              size: 14,
            ),
            onLongPress: () {
              print("press");
            },
          ),
          const ListTile(
            leading: Icon(Icons.dark_mode_outlined),
            title: Text('Dark mode'),
            trailing: Switch(
              activeTrackColor: Colors.green,
              value: true,
              onChanged: null,
            ),
          ),
          ListTile(
            leading: const Icon(Icons.logout),
            title: const Text('Log out'),
            trailing: const Icon(
              Icons.arrow_forward_ios_rounded,
              size: 14,
            ),
            onLongPress: () {
              print("press");
            },
          ),
          const Expanded(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Text('Bottom'),
            ),
          ),
        ],
      ),
    );
  }
}
