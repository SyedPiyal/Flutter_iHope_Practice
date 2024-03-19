import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ihope_practice/views/settings/widget/setting_text_widget.dart';

import '../../common/widget/custom_appBar.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {

  bool isSwitchOn = true; // Initialize the switch state

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: const MyAppBar(title: 'Settings'),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'General',
              style: TextStyle(
                color: Color(0xff808D9E),
                  fontSize: 18
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'General',
                  style: TextStyle(
                    color: Color(0xff000000),
                  ),
                ),

                //to change switch size
                Transform.scale(
                  scale: 0.6, // Adjust the scale factor to make the switch smaller
                  child: Switch(
                    value:  isSwitchOn,
                    onChanged: (value) {
                      // Update the switch state when the user interacts with it
                      setState(() {
                        isSwitchOn = value;
                      });
                      print('Switch value changed: $value');
                    },
                  ),
                ),
              ],
            ),
            const SettingsTextWidget(
                text: 'Contact Us'),
            const Text(
              "About",
              style: TextStyle(
                color: Color(0xff808D9E),fontSize: 18
              ),
            ),
            const SettingsTextWidget(
                text: 'Privacy Policy'),
            const SettingsTextWidget(
                text: 'About Us'),
            const SettingsTextWidget(
                text: 'FAQ'),
            const SettingsTextWidget(
                text: 'Legal'),
            // Logout Button
            Align(alignment: Alignment.center,
              child: TextButton(
                onPressed: () {
                  // Handle logout logic here
                  print('Logout button pressed');
                },
                child: const Text(
                  'Logout',
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 16,
                  ),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
