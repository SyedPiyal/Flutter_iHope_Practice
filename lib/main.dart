
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:ihope_practice/views/home_1/home1_view.dart';
import 'package:shared_preferences/shared_preferences.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  _MyAppState createState() => _MyAppState();

}

class _MyAppState extends State<MyApp>{
  Locale _locale = const Locale('en'); // Default locale is English
  //bool light0 = true; // Default switch state

  Future<void> _loadLocale() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final String? languageCode = prefs.getString('languageCode');
    //final bool switchState = prefs.getBool('switchState') ?? true;

    if (languageCode != null) {
      setState(() {
        _locale = Locale(languageCode);
        //light0 = switchState ?? true; // Use the default value if switchState is null
      });
    }
  }


  Future<void> _saveLocale() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('languageCode', _locale.languageCode);
    //await prefs.setBool('switchState', light0);
  }


  Future<void> _toggleLocale() async {
    setState(() {
      _locale = _locale.languageCode == 'en' ? const Locale('bn') : const Locale('en');
      //light0 = !_locale.languageCode.contains('en');
    });
    await _saveLocale();
  }

  @override
  void initState() {
    super.initState();
    _loadLocale();
  }
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //locale:Locale("bn"),
      localizationsDelegates:  const [
        AppLocalizations.delegate, // Add this line
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en'), // English
        Locale('bn'), // Spanish
      ],
      locale: _locale,
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: HomePage(toggleLocale: _toggleLocale),
    );
  }
}


