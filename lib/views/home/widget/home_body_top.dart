import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../../common/widget/home_screen_search_widget.dart';
import '../../account_info/account_Info_view.dart';

class HomeBodyTop extends StatefulWidget {
  const HomeBodyTop({super.key, required this.toggleLocale});

  final VoidCallback toggleLocale;

  @override
  State<HomeBodyTop> createState() => _HomeBodyTop();
}

class _HomeBodyTop extends State<HomeBodyTop> {
  int myCurrentIndex =
  0; // Initialize the current index based on your requirement
  bool light0 = true;

  @override
  Widget build(BuildContext context) {
    final localization = AppLocalizations.of(context);
    return Stack(
      children: [


        //----->
        //top background image
        //----->
        Container(
          height: 150,
          margin: const EdgeInsets.only(bottom: 30),
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



        //search filed---->
        Positioned(
            bottom: 05,
            left: 20,
            right: 20,
            child: SearchFiled(
              hintTxt: localization!.search,
            )),



        //top icon and settings------>
        Padding(
          padding: const EdgeInsets.only(left: 15, top: 20),
          child: Row(
            children: [
              Image.asset(
                "assets/images/ihope.png",
                height: 80,
                width: 80,
              ),
              const SizedBox(
                width: 75,
              ),
              Text(
                "BN",
                style: light0
                    ? const TextStyle(
                  color: Colors.white70,
                )
                    : const TextStyle(color: Colors.white),
              ),

              //----->
              //Switch for language change
              //----->
              Padding(
                padding: const EdgeInsets.only(left: 9, right: 9),
                child: SizedBox(
                  width: 20,
                  child: Transform.scale(
                    scale: .6,
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


              Text(
                "EN",
                style: light0
                    ? const TextStyle(color: Colors.white)
                    : const TextStyle(color: Colors.white70),
              ),


              const SizedBox(
                width: 10,
              ),
              Image.asset(
                "assets/images/bell.png",
                height: 25,
                width: 25,
              ),
              const SizedBox(
                width: 10,
              ),

              InkWell(onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AccountInfo(),
                  ),
                );
              },
                child: Container(
                  width: 40.0,
                  height: 40.0,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("assets/images/profile1.png")),
                    borderRadius: BorderRadius.all(Radius.circular(25)),
                  ),
                ),
              )

            ],
          ),
        )
      ],
    );
  }
}
