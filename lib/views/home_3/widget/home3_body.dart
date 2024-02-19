import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../../common/widget/home_screen_listview_widget.dart';
import '../../../common/widget/home_screen_gridview_widget.dart';
import '../../../common/widget/home_quick_access_lisview_widget.dart';
import '../../../common/widget/home_screen_search_widget.dart';
import '../../../common/widget/home_screen_slider_widget.dart';
import '../../../common/widget/home_screen_card_widget.dart';
import '../../chat_list/chat_view.dart';

class HomePageStateBody extends StatefulWidget {
  const HomePageStateBody({super.key});

  @override
  State<HomePageStateBody> createState() => _HomePageStateBodyState();
}

class _HomePageStateBodyState extends State<HomePageStateBody> {

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //search option------>
              SearchFiled(
                hintTxt: AppLocalizations.of(context)!.search,
              ),
              //cardview item------->
              Padding(
                padding: const EdgeInsets.only(top: 20, bottom: 20),
                child: SizedBox(
                    height: 170,
                    child: Row(
                      mainAxisAlignment:
                      MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: HomeScreenCardWidget(
                            onTap: () {},
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
                                        const ChatPage()));
                              },
                              title1:
                              AppLocalizations.of(context)!.all,
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

              //image slider and indicator--------->
              SizedBox(
                  height: 140,
                  child: ImageSlider(
                    itemList: [
                      {
                        "name":
                        AppLocalizations.of(context)!.doctorName,
                        "subName":
                        AppLocalizations.of(context)!.designation
                      },
                      {
                        "name":
                        AppLocalizations.of(context)!.doctorName,
                        "subName":
                        AppLocalizations.of(context)!.designation
                      },
                      {
                        "name":
                        AppLocalizations.of(context)!.doctorName,
                        "subName":
                        AppLocalizations.of(context)!.designation
                      },
                      {
                        "name":
                        AppLocalizations.of(context)!.doctorName,
                        "subName":
                        AppLocalizations.of(context)!.designation
                      },
                    ],
                  )),
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
                              "text": AppLocalizations.of(context)!
                                  .doctor,
                              "image": "assets/images/doctor.png",
                              "textColor": Colors.black,
                              "color": const Color(0xffffffff)
                            },
                            {
                              "text": AppLocalizations.of(context)!
                                  .ambulance,
                              "image": "assets/images/ambulance.png",
                              "textColor": Colors.black,
                              "color": const Color(0xffffffff)
                            },
                            {
                              "text": AppLocalizations.of(context)!
                                  .healthCare,
                              "image": "assets/images/health.png",
                              "textColor": Colors.black,
                              "color": const Color(0xffffffff)
                            },
                            {
                              "text": AppLocalizations.of(context)!
                                  .pharmacy,
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
                          Text(AppLocalizations.of(context)!.selfTest,
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold)),
                          Text(AppLocalizations.of(context)!.showMore,
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff115F6E),
                                  fontSize: 12)),
                        ],
                      ),
                      CustomListView(
                        itemList: [
                          AppLocalizations.of(context)!.sGPT,
                          AppLocalizations.of(context)!.alkaline,
                          AppLocalizations.of(context)!.tIBC,
                          AppLocalizations.of(context)!.cCR,
                          // Add more items as needed
                        ],
                      ),
                    ],
                  )),
              //quick access listview
              Padding(
                padding: const EdgeInsets.only(top: 25, bottom: 20),
                child: Text(AppLocalizations.of(context)!.quickAccess,
                    style:
                    const TextStyle(fontWeight: FontWeight.bold)),
              ),

              //quick access listview
              SizedBox(
                  height: 100,
                  child: Row(
                    children: [
                      Expanded(
                          child: QuickAccessList(
                            image: "assets/images/appointment.png",
                            text:
                            AppLocalizations.of(context)!.appointment,
                          )),
                      Expanded(
                          child: QuickAccessList(
                            image: "assets/images/ConsDoctor.png",
                            text: AppLocalizations.of(context)!
                                .consultDoctors,
                          )),
                      Expanded(
                          child: QuickAccessList(
                            image: "assets/images/Institute.png",
                            text: AppLocalizations.of(context)!.institute,
                          )),
                      Expanded(
                          child: QuickAccessList(
                            image: "assets/images/healthPack.png",
                            text: AppLocalizations.of(context)!
                                .healthPackage,
                          )),
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
