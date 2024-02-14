import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:ihope_practice/common/widget/GridViewWid.dart';
import 'package:ihope_practice/common/widget/QuickAccessList.dart';
import 'package:ihope_practice/common/widget/SearchField.dart';
import 'package:ihope_practice/common/widget/Slider.dart';
import '../../common/widget/CustomBottomNavigation.dart';
import '../../common/widget/home_screen_card_widget.dart';

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
                              fit: BoxFit.cover, image: AssetImage("assets/images/profile1.png")),
                          borderRadius: BorderRadius.all(Radius.circular(25)),
                          //color: Colors.redAccent,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20, bottom: 5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(AppLocalizations.of(context)!.hello, style: const TextStyle(fontSize: 14)),
                            Text(AppLocalizations.of(context)!.userName,
                                style: const TextStyle(
                                    fontSize: 17, fontWeight: FontWeight.bold))
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                actions:  [
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
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
              //search option----->
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        SearchFiled(
                          hintTxt: AppLocalizations.of(context)!.search,
                        ),
                        // card view ---->
                        Padding(
                          padding: const EdgeInsets.only(top: 20, bottom: 20),
                          child: SizedBox(
                              height: 170,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                    child: HomeScreenCardWidget(
                                        title1:
                                        AppLocalizations.of(context)!.upload,
                                        title2: AppLocalizations.of(context)!
                                            .prescription,
                                        backgroundColors: const [
                                          Color(0xff237B86),
                                          Color(0xff02485B),
                                        ],
                                        titleStyle: const TextStyle(
                                            color: Color(0xffFFFFFF),
                                            fontWeight: FontWeight.bold),
                                        image: "assets/images/upload.png"),
                                  ),
                                  Expanded(
                                    child: HomeScreenCardWidget(
                                        title1: AppLocalizations.of(context)!.all,
                                        title2: AppLocalizations.of(context)!
                                            .selfTest,
                                        backgroundColors: const [
                                          Color(0xffCFDFE2),
                                          Color(0xffCFDFE2),
                                        ],
                                        titleStyle: const TextStyle(
                                            color: Color(0xff000000),
                                            fontWeight: FontWeight.bold),
                                        image: "assets/images/test.png"),
                                  ),
                                ],
                              )),
                        ),

                        //image slider and indicator----->
                         SizedBox(
                            height: 140,child: ImageSlider(
                            itemList: [
                        {"name": AppLocalizations.of(context)!.doctorName, "subName": AppLocalizations.of(context)!.designation},
                        {"name": AppLocalizations.of(context)!.doctorName, "subName": AppLocalizations.of(context)!.designation},
                        {"name": AppLocalizations.of(context)!.doctorName, "subName": AppLocalizations.of(context)!.designation},
                        {"name": AppLocalizations.of(context)!.doctorName, "subName": AppLocalizations.of(context)!.designation},

                        ],

                        ),),

                         Text(AppLocalizations.of(context)!.features,style: const TextStyle(fontWeight: FontWeight.bold)),
                        SizedBox(
                          height: 335,
                          child: GridViewWid(
                            itemList: [
                              {
                                "text":
                                AppLocalizations.of(context)!.doctor,
                                "image": "assets/images/doctor.png",
                                "textColor": Colors.black,
                                "color": const Color(0xffE2F2FF)
                              },
                              {
                                "text": AppLocalizations.of(context)!
                                    .ambulance,
                                "image": "assets/images/ambulance.png",
                                "textColor": Colors.black,
                                "color": const Color(0xffFDDEE3)
                              },
                              {
                                "text": AppLocalizations.of(context)!
                                    .healthCare,
                                "image": "assets/images/health.png",
                                "textColor": Colors.black,
                                "color": const Color(0xffDEE9FD)
                              },
                              {
                                "text": AppLocalizations.of(context)!
                                    .pharmacy,
                                "image": "assets/images/shop.png",
                                "textColor": Colors.black,
                                "color": const Color(0xffFEEDE2)
                              },
                              // Add more items as needed
                            ],
                          ),
                        ),
                         Padding(
                          padding: const EdgeInsets.only(top: 25,bottom: 20),
                          child: Text(AppLocalizations.of(context)!.quickAccess,style: const TextStyle(fontWeight: FontWeight.bold)),
                        ),

                        //quick access listview------>
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: SizedBox(height: 100,
                              child:  Row(
                                children: [
                                  Expanded(child: QuickAccessList(image: "assets/images/appointment.png", text: AppLocalizations.of(context)!.appointment,)),
                                  Expanded(child: QuickAccessList(image: "assets/images/ConsDoctor.png", text: AppLocalizations.of(context)!.consultDoctors,)),
                                  Expanded(child: QuickAccessList(image: "assets/images/Institute.png", text: AppLocalizations.of(context)!.institute,)),
                                  Expanded(child: QuickAccessList(image: "assets/images/healthPack.png", text: AppLocalizations.of(context)!.healthPackage,)),
                                ],
                              )),
                        ),
                      ],
                    ),
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

    );
  }
}
