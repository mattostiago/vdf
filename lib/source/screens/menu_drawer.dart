import 'package:flutter/material.dart';
import 'package:vdf/source/utils/constants.dart';

class MenuDrawer extends StatelessWidget {
  const MenuDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          const DrawerHeader(
            child: Text(
              tituloGlobal,
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
            decoration: BoxDecoration(
              color: Colors.black38,
              /* image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('assets/images/cover.jpg'),),*/
            ),
          ),
          ListTile(
            leading: const Icon(Icons.verified_user),
            title: const Text('Start'),
            onTap: () => {
              /*
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const StartPage(),
                ),
              )
              */
            },
          ),

/*
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text('Settings'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: const Icon(Icons.border_color),
            title: const Text('Feedback'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: const Icon(Icons.exit_to_app),
            title: const Text('Logout'),
            onTap: () => {Navigator.of(context).pop()},
          ),

          */
        ],
      ),
    );
  }
}
