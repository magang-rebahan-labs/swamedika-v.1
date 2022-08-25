import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';
// import 'package:swamedika/views/pages/detail_fruit.dart';
import 'package:swamedika/views/pages/logosplash.dart';
import 'package:swamedika/views/pages/splashscreen.dart';

bool? seenOnBoard;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  SharedPreferences pref = await SharedPreferences.getInstance();
  seenOnBoard = pref.getBool('seenOnBoard') ?? false;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Swamedika Thibbun Nabawi',
        theme: ThemeData(
          backgroundColor: Colors.white,
        ),
        home: seenOnBoard == true ? const LogoSplash() : const SplashScreen());
    // home: const DetailFruit());
  }
}
