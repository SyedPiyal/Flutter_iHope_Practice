import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../../common/widget/CustomListview.dart';
import '../../../common/widget/GridViewWid.dart';
import '../../../common/widget/QuickAccessList.dart';
import '../../../common/widget/Slider.dart';
import '../../../common/widget/home_screen_card_widget.dart';
import '../../home_2/home2_view.dart';

class HomeBodyBottom extends StatefulWidget {
  const HomeBodyBottom({super.key});

  @override
  State<HomeBodyBottom> createState() => _HomeBodyBottom();
}

class _HomeBodyBottom extends State<HomeBodyBottom> {
  @override
  Widget build(BuildContext context) {
    final localization = AppLocalizations.of(context);
    return Expanded(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
              left: 16, right: 16, top: 4, bottom: 80),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
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
                            onTap: () {},
                            title1: localization!.upload,
                            title2: localization.prescription,
                            backgroundColors: const [
                              Color(0xff237B86),
                              Color(0xff02485B),
                            ],
                            titleStyle: const TextStyle(
                                color: Color(0xffFFFFFF),
                                fontWeight: FontWeight.bold),
                            image: "assets/images/upload.png",
                          ),
                        ),
                        Expanded(
                          child: HomeScreenCardWidget(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                        const MyHomePage(
                                            title: 'home')));
                              },
                              title1: localization.all,
                              title2: localization.selfTest,
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

              //image slider and indicator --->
              SizedBox(
                height: 140,
                child: ImageSlider(
                  itemList: [
                    {
                      "name": localization.doctorName,
                      "subName": localization.designation
                    },
                    {
                      "name": localization.doctorName,
                      "subName": localization.designation
                    },
                    {
                      "name": localization.doctorName,
                      "subName": localization.designation
                    },
                    {
                      "name": localization.doctorName,
                      "subName": localization.designation
                    },
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              //Features Gridview------->
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: const Color(0xffCFDFE2)),
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(AppLocalizations.of(context)!.features,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold)),
                      SizedBox(
                        height: 300,
                        child: GridViewWid(
                          itemList: [
                            {
                              "text": localization.doctor,
                              "image": "assets/images/doctor.png",
                              "textColor": Colors.black,
                              "color": const Color(0xffffffff)
                            },
                            {
                              "text": localization.ambulance,
                              "image": "assets/images/ambulance.png",
                              "textColor": Colors.black,
                              "color": const Color(0xffffffff)
                            },
                            {
                              "text": localization.healthCare,
                              "image": "assets/images/health.png",
                              "textColor": Colors.black,
                              "color": const Color(0xffffffff)
                            },
                            {
                              "text": localization.pharmacy,
                              "image": "assets/images/shop.png",
                              "textColor": Colors.black,
                              "color": const Color(0xffffffff)
                            },
                            // Add more items as needed
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              //self test listview-------->
              Container(
                  margin: const EdgeInsets.only(top: 20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: const Color(0xffCFDFE2)),
                  padding: const EdgeInsets.all(12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment:
                        MainAxisAlignment.spaceBetween,
                        children: [
                          Text(localization.selfTest,
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold)),
                          Text(localization.showMore,
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff115F6E),
                                  fontSize: 12)),
                        ],
                      ),
                      CustomListView(
                        itemList: [
                          localization.sGPT,
                          localization.alkaline,
                          localization.tIBC,
                          localization.cCR,
                          // Add more items as needed
                        ],
                      ),
                    ],
                  )),
              //quick access listview------>
              Padding(
                padding: const EdgeInsets.only(top: 25, bottom: 20),
                child: Text(AppLocalizations.of(context)!.quickAccess,
                    style:
                    const TextStyle(fontWeight: FontWeight.bold)),
              ),

              //quick access listview------>
              SizedBox(
                height: 100,
                child: Row(
                  children: [
                    Expanded(
                      child: QuickAccessList(
                        image: "assets/images/appointment.png",
                        text: localization.appointment,
                      ),
                    ),
                    Expanded(
                      child: QuickAccessList(
                        image: "assets/images/ConsDoctor.png",
                        text: AppLocalizations.of(context)!
                            .consultDoctors,
                      ),
                    ),
                    Expanded(
                      child: QuickAccessList(
                        image: "assets/images/Institute.png",
                        text: localization.institute,
                      ),
                    ),
                    Expanded(
                      child: QuickAccessList(
                        image: "assets/images/healthPack.png",
                        text: localization.healthPackage,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
