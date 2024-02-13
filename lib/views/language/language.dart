import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ihope_practice/common/widget/SearchField.dart';

import '../../common/widget/CustomBottomNavigation.dart';
import '../../common/widget/CustomListview.dart';
import '../../common/widget/GridViewWid.dart';
import '../../common/widget/GridviewWidget.dart';
import '../../common/widget/QuickAccessList.dart';
import '../../common/widget/Slider.dart';


class Language extends StatefulWidget {
  @override
  _LanguageState createState() => _LanguageState();
}

class _LanguageState extends State<Language> {
  int myCurrentIndex = 0; // Initialize the current index based on your requirement
  bool light0 = true;


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        backgroundColor: Colors.transparent,
        extendBodyBehindAppBar: true,

        //body
        body: Container(
          //decoration , using image for app background in full screen
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/background.png'),
                fit: BoxFit.fill),
          ),
          child: SafeArea(
            child: Column(
              children: [
             Stack(children: [   Container(
               height: 150, margin: EdgeInsets.only(bottom: 30),
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
               Positioned(bottom:0,left:20,right:20,child: const SearchFiled()),
             Padding(
               padding: const EdgeInsets.only(left: 15,top: 20),
               child: Row(
                 children: [
                   Image.asset("assets/images/ihope.png",height: 80,width: 80,),
                   const SizedBox(
                     width: 75,
                   ),
                    Text("BN",style: light0
                       ? const TextStyle(color: Colors.white70,)
                       : const TextStyle(color:Colors.white),),
                   Padding(
                     padding: const EdgeInsets.only(left: 9,right: 9),
                     child: SizedBox(width: 20,
                       child: Transform.scale(scale: .6,
                         child: Switch(
                           activeColor: Colors.white,

                           value: light0,
                           onChanged: (bool value) {
                             setState(() {
                               light0 = value;
                             });
                           },
                         ),
                       ),
                     ),
                   ),
                    Text("EN",style: light0
                       ? const TextStyle(color: Colors.white)
                       : const TextStyle(color:Colors.white70),),
                   const SizedBox(
                     width: 10,
                   ),
                   Image.asset("assets/images/bell.png",height: 25,width: 25,),
                   const SizedBox(
                     width: 10,
                   ),
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
                 ],
               ),
             )],),

                Expanded(
                  child: Column(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: SingleChildScrollView(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                //search option

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
                                           /* Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) => const SelfTest()));*/
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
                                SizedBox(
                                  height: 30,
                                ),
                                Container(
                                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Color(0xffCFDFE2)),
                                  child: const Padding(
                                    padding: EdgeInsets.all(7.0),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(top: 8,left: 8,bottom: 8),
                                          child: Text("New Features",style: TextStyle(fontWeight: FontWeight.bold)),
                                        ),
                                        SizedBox(height: 320,child: GridViewWid(
                                          colors: [
                                            Color(0xffffffff),
                                            Color(0xffffffff),
                                            Color(0xffffffff),
                                            Color(0xffffffff),
                                          ],
                                        )),
                                      ],
                                    ),
                                  ),
                                ),
                                //self test listview
                                Padding(
                                  padding: const EdgeInsets.only(top: 20),
                                  child: Container(height: 460,
                                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Color(0xffCFDFE2)),
                                      child: const Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(top: 10,left: 15,bottom: 5,right: 20),
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                Text("Self Test",style: TextStyle(fontWeight: FontWeight.bold)),
                                                Text("Show More",style: TextStyle(fontWeight: FontWeight.bold,color: Color(0xff115F6E),fontSize: 12)),
                                              ],
                                            ),
                                          ),
                                          SizedBox(height: 420,child: Padding(
                                            padding: EdgeInsets.only(left: 10,right: 10),
                                            child: CustomListView(),
                                          )),
                                        ],
                                      )),
                                ),
                                //quick access listview
                                const Padding(
                                  padding: EdgeInsets.only(top: 25,bottom: 20),
                                  child: Text("Quick Access",style: TextStyle(fontWeight: FontWeight.bold)),
                                ),

                                //quick access listview
                                Container(height: 100,
                                    child: const QuickAccessList()),

                                //for bottom navigation
                                //SizedBox(height: 80,)
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
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
