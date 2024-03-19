import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ihope_practice/views/account_info/account_Info_view.dart';
import 'package:ihope_practice/views/ihope_info/ihope_info_view.dart';
import 'package:ihope_practice/views/profile/widget/profile_screen_item_widget.dart';
import 'package:ihope_practice/views/settings/settings_view.dart';

import '../../common/widget/custom_appBar.dart';
import '../notification/notification_view.dart';

class UserProfile extends StatefulWidget {
  const UserProfile({super.key});

  @override
  State<UserProfile> createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      //==============================
      // Custom AppBar
      //==============================

      appBar: MyAppBar(title: 'Profile',actions: [
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: IconButton(
        icon: const Icon(Icons.notifications),
        onPressed: () {
          // Handle search action
          Navigator.push(
            context,
              MaterialPageRoute(
                builder: (context) => NotificationPage(),
                ),
          );
        },
            ),
      ),
    // Add more action buttons as needed
    ],),


        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //==============================
              // Profile Container
              //==============================
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xffcfdfe2)),
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                child: const Row(
                  children: [
                    CircleAvatar(
                      radius: 25,
                      backgroundImage: AssetImage('assets/images/profile1.png'),
                    ),

                    //==============================
                    // user name and Phone Number
                    //==============================

                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Yousuf",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 17)),
                            Text("01203010405",
                                style: TextStyle(color: Colors.black26)),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 15, bottom: 10, left: 2),
                child: Text("General",
                    style: TextStyle(color: Color(0xff808D9E), fontSize: 20)),
              ),

              ProfileScreenItem(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AccountInfo(),
                    ),
                  );
                },
                titleName: 'Account Information',
                subTitleName: 'Change Your Account Information',
                iconImage: 'assets/images/iv_account.png',
              ),
              const Divider(color: Color(0xffE9E9EA)),
              ProfileScreenItem(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const IhopeInfo(),
                      ),
                    );
                  },
                  titleName: 'IHope Info',
                  subTitleName: 'Information About Our Service',
                  iconImage: 'assets/images/iv_info.png'),
              const Divider(color: Color(0xffE9E9EA)),
              ProfileScreenItem(
                  onTap: () {


                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Settings(),
                      ),
                    );
                    //==============================
                    // Alert Dialog
                    //==============================

                    /*showDialog<String>(
                      context: context,
                      builder: (BuildContext context) => AlertDialog(
                        title: const Text('Are You Sure You Want to Sign Out ?'),
                        //content: const Text('AlertDialog description'),
                        actions: <Widget>[
                          TextButton(
                            onPressed: () => Navigator.pop(context, 'No'),
                            child: const Text('No'),
                          ),
                          TextButton(
                            onPressed: () => Navigator.pop(context, 'Yes'),
                            child: const Text('Yes'),
                          ),
                        ],
                      ),
                    );*/
                  },
                  titleName: 'Settings',
                  subTitleName: 'Manage & Settings',
                  iconImage: 'assets/images/ic_settings.png'),
            ],
          ),
        ),
    );
  }
}
