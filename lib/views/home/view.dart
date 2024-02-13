import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ihope_practice/common/widget/SearchField.dart';
import 'package:ihope_practice/common/widget/GridViewWid.dart';
import 'package:ihope_practice/common/widget/GridviewWidget.dart';
import 'package:ihope_practice/common/widget/QuickAccessList.dart';
import 'package:ihope_practice/common/widget/Slider.dart';
import 'package:ihope_practice/views/selfTest/SelfTest.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../common/widget/CustomBottomNavigation.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int myCurrentIndex = 0;
  var currentPageIndex =1;

  @override
  Widget build(BuildContext context) {
    //change status bar color
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.black,
      systemNavigationBarColor: Colors.grey[200],
    ));
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        backgroundColor: Colors.transparent,
        extendBodyBehindAppBar: true,
        appBar: AppBar(
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
                        fit: BoxFit.cover, image: AssetImage("assets/images/profile1.png")),
                    borderRadius: BorderRadius.all(Radius.circular(25)),
                    //color: Colors.redAccent,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 20, bottom: 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Hello", style: TextStyle(fontSize: 14)),
                      Text("Golam Nobi Aunto",
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.bold))
                    ],
                  ),
                ),
              ],
            ),
          ),
          actions:  [
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: IconButton(
                icon: const Icon(Icons.menu_sharp, color: Color(0xff115F6E)),
                onPressed: () {
                  // Open the end drawer when the menu icon is clicked
                  Scaffold.of(context).openEndDrawer();
                },
              ),
            )
            //SvgPicture.asset("assets/svg/menu_icon.svg",height: 5,width: 5,)
          ],
        ),


        //body
        body: Container(
          //decoration , using image for app background in full screen
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/background.png'),
                fit: BoxFit.fill),
          ),
          child: SafeArea(
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //search option
                        SearchFiled(),
                        //cardview item
                         Padding(
                          padding: EdgeInsets.only(top: 20,bottom: 20),
                          child: SizedBox(height: 170,child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                            Material(
                            type: MaterialType.transparency,
                            elevation: 6.0,
                            color: Colors.transparent,
                            child: InkWell(
                              child: Card(elevation: 10,
                                  child: Container(
                                    width: 152,
                                    height: 170,
                                    decoration: BoxDecoration(
                                      gradient: const LinearGradient(
                                        begin: Alignment.topCenter,
                                        end: Alignment.bottomCenter,
                                        colors: [
                                          Color(0xff237B86),
                                          Color(0xff02485B),
                                        ],
                                      ),
                                      borderRadius: BorderRadius.circular(14),
                                    ),
                                    child:  Padding(
                                      padding: const EdgeInsets.all(12),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          //Icon(data["image"],color: Colors.black,size: 50),
                                          Image.asset("assets/images/upload.png",width: 45,height: 45),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          Text("Upload Prescription",style: TextStyle(color: Color(0xffFFFFFF),fontWeight: FontWeight.bold),)

                                        ],
                                      ),
                                    ),
                                  )),onTap: (){
                              setState(() {
                                /*Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const DetailsActivty()));*/
                              });
                            },
                            ),
                          ),
                              Material(
                                type: MaterialType.transparency,
                                elevation: 6.0,
                                color: Colors.transparent,
                                child: InkWell(
                                  child: Card(elevation: 10,
                                      child: Container(
                                        width: 152,
                                        height: 170,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(14),
                                          color: Color(0xffCFDFE2),
                                        ),
                                        child:  Padding(
                                          padding: const EdgeInsets.all(12),
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              //Icon(data["image"],color: Colors.black,size: 50),
                                              Image.asset("assets/images/test.png",width: 45,height: 45),
                                              const SizedBox(
                                                height: 10,
                                              ),
                                              Text("All Self Test",style: TextStyle(color: Color(
                                                  0xff000000),fontWeight: FontWeight.bold),)

                                            ],
                                          ),
                                        ),
                                      )),onTap: (){
                                  setState(() {
                                    Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const SelfTest()));
                                  });
                                },
                                ),
                              ),
                            ],
                          )),
                        ),

                        //image slider and indicator
                        const SizedBox(
                            height: 140,child: ImageSlider()),
                        const Text("New Features",style: TextStyle(fontWeight: FontWeight.bold)),
                        const Padding(
                          padding: EdgeInsets.only(top: 20),
                          child: SizedBox(height: 320,child: GridViewWid(
                            colors: [
                              Color(0xffE2F2FF),
                              Color(0xffFDDEE3),
                              Color(0xffDEE9FD),
                              Color(0xffFEEDE2),
                            ],
                          )),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 25,bottom: 20),
                          child: Text("Quick Access",style: TextStyle(fontWeight: FontWeight.bold)),
                        ),

                        //quick access listview
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Container(height: 100,
                              child: const QuickAccessList()),
                        ),
                        //SizedBox(height: 80,)
                      ],
                    ),
                  ),
                ),
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

      ),
    );
  }
}
