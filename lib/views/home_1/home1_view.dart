import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:ihope_practice/common/widget/SearchField.dart';
import 'package:ihope_practice/common/widget/home_screen_card_widget.dart';
import 'package:ihope_practice/views/home_1/widget/home_body_top.dart';
import 'package:ihope_practice/views/home_1/widget/home_body_bottom.dart';

import '../../common/widget/CustomBottomNavigation.dart';
import '../../common/widget/CustomListview.dart';
import '../../common/widget/GridViewWid.dart';
import '../../common/widget/QuickAccessList.dart';
import '../../common/widget/Slider.dart';
import '../home_2/home2_view.dart';

class HomePage extends StatefulWidget {
  final VoidCallback toggleLocale;

  //final bool light0;

  const HomePage({Key? key, required this.toggleLocale}) : super(key: key);

  @override
  _HomePage createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  int myCurrentIndex = 0; // Initialize the current index based on your requirement
  bool light0 = true;

  @override
  Widget build(BuildContext context) {
    final localization = AppLocalizations.of(context);
    return Scaffold(
      extendBody: true,
      backgroundColor: Colors.transparent,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/background.png'),
              fit: BoxFit.fill),
        ),
        child: Column(
          children: [
            HomeBodyTop(toggleLocale: widget.toggleLocale),

            const HomeBodyBottom(),
          ],
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
    );
  }
}
