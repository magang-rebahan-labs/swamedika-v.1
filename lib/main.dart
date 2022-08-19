import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:swamedika/views/controlleres/book_controllers.dart';
import 'package:swamedika/views/pages/home.dart';
import 'package:provider/provider.dart';

// import 'views/pages/splashscreen.dart';

bool? seenOnBoard;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
      overlays: [SystemUiOverlay.bottom, SystemUiOverlay.top]);
  SharedPreferences pref = await SharedPreferences.getInstance();
  seenOnBoard = pref.getBool('seenOnBoard') ?? false;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => BookController(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Swamedika Thibbun Nabawi',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const HomePage(),
        // home: const SplashScreen(),
      ),
    );
  }
}
