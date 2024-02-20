import 'package:flutter/material.dart';

import '../profile/widget/profile_screen_item_widget.dart';

class IhopeInfo extends StatefulWidget {
  const IhopeInfo({super.key});

  @override
  State<IhopeInfo> createState() => _IhopeInfoState();
}

class _IhopeInfoState extends State<IhopeInfo> {
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

        title: const Text('iHope Info', style: TextStyle(color: Colors.white)),

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
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            //==============================
            // Profile Container
            //==============================

            Image.asset('assets/images/iv_information.png'),

            ProfileScreenItem(
              onTap: () {
              },
              titleName: 'Name',
              subTitleName: 'iHope Medical Services',
              iconImage: 'assets/images/iv_account.png',
            ),
            const Divider(color: Color(0xffE9E9EA)),
            ProfileScreenItem(
                onTap: () {},
                titleName: 'Contact Number',
                subTitleName: '021 01293201',
                iconImage: 'assets/images/iv_info.png'),
            const Divider(color: Color(0xffE9E9EA)),
            ProfileScreenItem(
                onTap: () {

                  //==============================
                  // Bottom Navigation
                  //==============================

                  showModalBottomSheet<void>(
                    context: context,
                    builder: (BuildContext context) {
                      return const SizedBox(
                        height: 200,
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Text('Email'),
                              SizedBox(
                                height: 30,
                              ),
                              Text('care@ihope.com'),
                            ],
                          ),
                        ),
                      );
                    },
                  );
                },
                titleName: 'Email',
                subTitleName: 'care@ihope.com',
                iconImage: 'assets/images/iv_email.png'),
          ],
        ),
      ),
    );
  }
}
