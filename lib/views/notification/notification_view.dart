import 'package:flutter/material.dart';

import '../../common/widget/custom_appBar.dart';

class NotificationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(title: 'Notification'),
      body: ListView.builder(
        itemCount: 5, // Replace with the actual number of notifications
        itemBuilder: (context, index) {
          // Replace with your notification data

          String date = 'Feb 22, 2024';
          String time = '10:30 AM';
          String notificationText = 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.';

          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                const CircleAvatar(
                  radius: 20,
                  backgroundImage: AssetImage('assets/images/profile1.png'),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(date),
                          Text(time),
                        ],
                      ),
                      Text(notificationText),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
