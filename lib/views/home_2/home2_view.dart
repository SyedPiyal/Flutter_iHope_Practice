import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:ihope_practice/views/home_2/widget/home2_body.dart';
import '../../common/widget/CustomBottomNavigation.dart';


class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int myCurrentIndex = 0;
  var currentPageIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //body
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          //decoration , using image for app background in full screen.......->
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/background.png'),
                fit: BoxFit.fill),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppBar(
                elevation: 0,
                toolbarHeight: 70,
                backgroundColor: Colors.transparent,
                title: Padding(
                  padding: const EdgeInsets.only(top: 35, bottom: 20),
                  child: Row(
                    children: [
                      //access svg file from asstes
                      //SvgPicture.asset("assets/svg/play_button1.svg",height: 35,width: 35,),
                      Container(
                        width: 50.0,
                        height: 50.0,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage("assets/images/profile1.png")),
                          borderRadius: BorderRadius.all(Radius.circular(25)),
                          //color: Colors.redAccent,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20, bottom: 5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(AppLocalizations.of(context)!.hello,
                                style: const TextStyle(fontSize: 14)),
                            Text(AppLocalizations.of(context)!.userName,
                                style: const TextStyle(
                                    fontSize: 17, fontWeight: FontWeight.bold))
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                actions: [
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: IconButton(
                      icon: const Icon(Icons.menu_sharp,
                          color: Color(0xff115F6E)),
                      onPressed: () {
                        // Open the end drawer when the menu icon is clicked
                        Scaffold.of(context).openEndDrawer();
                      },
                    ),
                  )
                  //SvgPicture.asset("assets/svg/menu_icon.svg",height: 5,width: 5,)
                ],
              ),



              //search option----->
              const MyHomePageBody(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: AnimatedCurvedNavigationBar(
        currentIndex: myCurrentIndex,
        onTap: (index) {
          setState(() {
            myCurrentIndex = index;
          });
        },
      ),
      // Use the EndDrawerWidget
    );
  }
}
