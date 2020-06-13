import 'package:awesome_app/pages/home_page.dart';
import 'package:awesome_app/pages/home_page_with_sb.dart';
import 'package:awesome_app/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'pages/login_page.dart';


Future main() async{
  //widgets
  WidgetsFlutterBinding.ensureInitialized();
  Constants.prefs = await SharedPreferences.getInstance();
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Constants.prefs.getBool("loggedIn")==true
      ?HomePageSB()
      :LoginPage(),
    theme: ThemeData(
      primarySwatch:Colors.teal,
    ),
    routes: {
      LoginPage.routeName:(context)=>LoginPage(),
      HomePage.routeName:(context)=>HomePage(),
    },
  );
  }
}
