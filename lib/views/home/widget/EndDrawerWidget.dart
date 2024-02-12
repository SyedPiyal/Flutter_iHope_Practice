import 'package:flutter/material.dart';

class EndDrawerWidget extends StatelessWidget {
  const EndDrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text(
              'Drawer Header',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          ListTile(
            title: Text('Item 1'),
            onTap: () {
              // Add your navigation logic here
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Item 2'),
            onTap: () {
              // Add your navigation logic here
              Navigator.pop(context);
            },
          ),
          // Add more list tiles as needed
        ],
      ),
    );
  }
}
