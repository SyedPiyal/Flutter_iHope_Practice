
import 'package:flutter/material.dart';
import 'package:ihope_practice/views/account_info/widget/account_text_widget.dart';

class AccountInfo extends StatefulWidget {
  const AccountInfo({super.key});

  @override
  State<AccountInfo> createState() => _AccountInfoState();
}

class _AccountInfoState extends State<AccountInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //----->
        //changing app back button color
        //----->
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),

        title: const Text('Account Information', style: TextStyle(color: Colors.white)),

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

        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.edit_outlined),
            ),
          ),
        ],
      ),
       body:  Padding(
         padding:  const EdgeInsets.symmetric(horizontal: 25,vertical: 40),
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             const Text("Personal",style: TextStyle(color: Color(0xff808D9E),fontSize: 16),),
             Container(
               height: 200,
               decoration:  BoxDecoration(
                 color: const Color(0x0ff89651),
                 borderRadius: BorderRadius.circular(10),
               ),padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 15),
               margin: const EdgeInsets.symmetric(vertical: 15),
               child: const Column(
                 children: [
                   Expanded(
                     child: Row(
                       children: [
                         Expanded(child: AccountTextWidget(title: 'iHope ID ', subTitle: '1092302')),
                         Expanded(child: AccountTextWidget(title: 'Username', subTitle: 'sadiq')),
                       ],
                     ),
                   ),
                   Expanded(
                     child: Row(
                       children: [
                         Expanded(child: AccountTextWidget(title: 'First Name', subTitle: 'Sadiq Md')),
                         Expanded(child: AccountTextWidget(title: 'Last Name', subTitle: 'Asif')),
                       ],
                     ),
                   ),
                   Expanded(
                     child: Row(
                       children: [
                         Expanded(child: AccountTextWidget(title: 'Date of Birth', subTitle: 'Feb 12, 1994')),
                         Expanded(child: AccountTextWidget(title: 'Gender', subTitle: 'Male')),
                       ],
                     ),
                   ),
                 ],
               ),
             ),
             const Text("Contact",style: TextStyle(color: Color(0xff808D9E),fontSize: 16),),


             //==============================
             // Contact Container
             //==============================

             Container(
               height: 200,
               decoration:  BoxDecoration(
                 color: const Color(0x0ff89651),
                 borderRadius: BorderRadius.circular(10),
               ),padding: const EdgeInsets.symmetric(horizontal: 35,vertical: 15),
               margin: const EdgeInsets.symmetric(vertical: 15),
               child: const Column(
                 children: [
                   Expanded(
                     child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                         AccountTextWidget(title: 'Phone Number', subTitle: '01671234123'),
                         AccountTextWidget(title: 'Email', subTitle: 'sadiq@gmail.com'),
                       ],
                     ),
                   ),
                   Expanded(
                     child: Row(
                       children: [
                         Expanded(child: AccountTextWidget(title: 'City', subTitle: 'Dhaka')),
                         Expanded(child: AccountTextWidget(title: 'Zone', subTitle: 'Dhanmondi')),
                       ],
                     ),
                   ),
                   Expanded(
                     child: Row(
                       children: [
                         AccountTextWidget(title: 'Address', subTitle: '13 Kazi nazrul avenue'),

                       ],
                     ),
                   ),
                 ],
               ),
             )
           ],
         ),
       ),
    );
  }
}
