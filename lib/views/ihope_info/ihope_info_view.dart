import 'package:flutter/material.dart';

import '../../common/widget/custom_appBar.dart';
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

      //==============================
      // Custom App Bar
      //==============================

      appBar: const MyAppBar(title: 'iHope Info'), // No actions provided
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
