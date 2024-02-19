import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ihope_practice/views/profile/widget/profile_screen_card_widget.dart';

class UserProfile extends StatefulWidget {
  const UserProfile({super.key});

  @override
  State<UserProfile> createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          //----->
          //changing app back button color
          //----->
          iconTheme: const IconThemeData(
            color: Colors.white, //change color here
          ),

          title: const Text('Profile', style: TextStyle(color: Colors.white)),

          //----->
          //for changing app bar shape and color
          //----->
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [
                  Color(0xff237B86),
                  Color(0xff02485B),
                ],
              ),
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 15),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0xffcfdfe2)
                ),padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 10),
                child:  const Row(
                children: [
                  CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage('assets/images/profile1.png'),
                  ),
                  //user name and Phone Number
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
                  CircleAvatar(radius: 15,backgroundColor: Colors.white,child: Icon(CupertinoIcons.down_arrow,size: 15,))
                ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const ProfileScreenCard(
                  titleName: 'Account Information',
                  subTitleName: 'Change Your Account Information',
                  iconImage: 'assets/images/iv_account.png'),
              const ProfileScreenCard(
                  titleName: 'IHope Info',
                  subTitleName: 'Information About Our Service',
                  iconImage: 'assets/images/iv_info.png'),
              const ProfileScreenCard(
                  titleName: 'Sign Out',
                  subTitleName: 'Exit',
                  iconImage: 'assets/images/iv_signOut.jpg'),
            ],
          ),
        ));
  }
}
