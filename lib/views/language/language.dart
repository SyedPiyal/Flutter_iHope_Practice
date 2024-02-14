
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ihope_practice/common/widget/SearchField.dart';
import 'package:ihope_practice/views/home/view.dart';

import '../../common/widget/CustomBottomNavigation.dart';
import '../../common/widget/CustomListview.dart';
import '../../common/widget/GridViewWid.dart';
import '../../common/widget/GridviewWidget.dart';
import '../../common/widget/QuickAccessList.dart';
import '../../common/widget/Slider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';





class Language extends StatefulWidget {
  final VoidCallback toggleLocale;

  const Language({Key? key, required this.toggleLocale}) : super(key: key);
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
               height: 150, margin: const EdgeInsets.only(bottom: 30),
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
               const Positioned(bottom:0,left:20,right:20,child: SearchFiled()),
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
                               widget.toggleLocale();
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
                                  padding: const EdgeInsets.only(top: 20,bottom: 20),
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
                                                       Text(AppLocalizations.of(context)!.uploadPrescription,style: const TextStyle(color: Color(0xffFFFFFF),fontWeight: FontWeight.bold),)

                                                    ],
                                                  ),
                                                ),
                                              )),onTap: (){
                                          setState(() {
                                            Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const MyHomePage(title: 'home')));
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
                                                  color: const Color(0xffCFDFE2),
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
                                                       Text(AppLocalizations.of(context)!.allSelfTest,style: const TextStyle(color: Color(
                                                          0xff000000),fontWeight: FontWeight.bold),)

                                                    ],
                                                  ),
                                                ),
                                              )),onTap: (){
                                          setState(() {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) => const MyHomePage(title: 'Home')));
                                          });
                                        },
                                        ),
                                      ),
                                    ],
                                  )),
                                ),

                                //image slider and indicator
                                 SizedBox(
                                    height: 140,child: ImageSlider(
                                  itemList: [
                                    {"name": AppLocalizations.of(context)!.doctorName, "subName": AppLocalizations.of(context)!.designation},
                                    {"name": AppLocalizations.of(context)!.doctorName, "subName": AppLocalizations.of(context)!.designation},
                                    {"name": AppLocalizations.of(context)!.doctorName, "subName": AppLocalizations.of(context)!.designation},
                                    {"name": AppLocalizations.of(context)!.doctorName, "subName": AppLocalizations.of(context)!.designation},

                                  ],
                                )),
                                const SizedBox(
                                  height: 30,
                                ),
                                Container(
                                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: const Color(0xffCFDFE2)),
                                  child:  Padding(
                                    padding: const EdgeInsets.all(7.0),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(top: 8,left: 8,bottom: 8),
                                          child: Text(AppLocalizations.of(context)!.features,style: const TextStyle(fontWeight: FontWeight.bold)),
                                        ),
                                         SizedBox(height: 320,child: GridViewWid(
                                          itemList: [
                                            {"text": AppLocalizations.of(context)!.doctor, "image": "assets/images/doctor.png", "textColor": Colors.black, "color": const Color(0xffffffff)},
                                            {"text": AppLocalizations.of(context)!.ambulance, "image": "assets/images/ambulance.png", "textColor": Colors.black, "color": const Color(0xffffffff)},
                                            {"text": AppLocalizations.of(context)!.healthCare, "image": "assets/images/health.png", "textColor": Colors.black, "color": const Color(0xffffffff)},
                                            {"text": AppLocalizations.of(context)!.pharmacy, "image": "assets/images/shop.png", "textColor": Colors.black, "color": const Color(0xffffffff)},
                                            // Add more items as needed
                                          ],
                                        )),
                                      ],
                                    ),
                                  ),
                                ),
                                //self test listview
                                Padding(
                                  padding: const EdgeInsets.only(top: 20),
                                  child: Container(height: 300,
                                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: const Color(0xffCFDFE2)),
                                      child:  Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(top: 10,left: 15,bottom: 5,right: 20),
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                Text(AppLocalizations.of(context)!.selfTest,style: const TextStyle(fontWeight: FontWeight.bold)),
                                                Text(AppLocalizations.of(context)!.showMore,style: const TextStyle(fontWeight: FontWeight.bold,color: Color(0xff115F6E),fontSize: 12)),
                                              ],
                                            ),
                                          ),
                                           SizedBox(height: 250,child: Padding(
                                            padding: const EdgeInsets.only(left: 10,right: 10),
                                            child: CustomListView(
                                              itemList: [
                                                AppLocalizations.of(context)!.sGPT,
                                                AppLocalizations.of(context)!.alkaline,
                                                AppLocalizations.of(context)!.tIBC,
                                                AppLocalizations.of(context)!.cCR,
                                                // Add more items as needed
                                              ],
                                            ),
                                          )),
                                        ],
                                      )),
                                ),
                                //quick access listview
                                 Padding(
                                  padding: const EdgeInsets.only(top: 25,bottom: 20),
                                  child: Text(AppLocalizations.of(context)!.quickAccess,style: const TextStyle(fontWeight: FontWeight.bold)),
                                ),

                                //quick access listview
                                Container(height: 100,
                                    child:  QuickAccessList(
                                      itemList: [
                                        {"text": AppLocalizations.of(context)!.appointment, "image": "assets/images/appointment.png"},
                                        {"text": AppLocalizations.of(context)!.consultDoctors, "image": "assets/images/ConsDoctor.png"},
                                        {"text": AppLocalizations.of(context)!.institute, "image": "assets/images/Institute.png"},
                                        {"text": AppLocalizations.of(context)!.healthPackage, "image": "assets/images/healthPack.png"},
                                        // Add more items as needed
                                      ],
                                    )),

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
