import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:ihope_practice/views/home_3/widget/home3_body.dart';

class HomePageState extends StatefulWidget {
  const HomePageState({super.key});

  @override
  State<HomePageState> createState() => _HomePageState();
}

class _HomePageState extends State<HomePageState> {
  int myCurrentIndex = 0;
  var currentPageIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/background.png'),
                fit: BoxFit.fill),
          ),
          child: Column(
            children: [
              AppBar(
                centerTitle: true,
                elevation: 0,
                toolbarHeight: 70,
                backgroundColor: Colors.transparent,
                title: Row(
                  children: [
                    Container(
                      width: 50.0,
                      height: 50.0,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("assets/images/profile1.png")),
                        borderRadius: BorderRadius.all(Radius.circular(25)),
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
                actions: [
                  Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: InkWell(
                        onTap: () {},
                        child: Image.asset(
                          "assets/images/notification.png",
                          height: 25,
                          width: 25,
                        ),
                      ))
                ],
              ),
              const HomePageStateBody(),
            ],
          ),
        ),
      ),
    );
  }
}
