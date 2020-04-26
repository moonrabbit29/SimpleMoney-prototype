import 'package:flutter/material.dart';
import 'package:topup/MainWidget/dashboard.dart';
import './MainWidget/mainnote.dart';
import './MainWidget/mainewallet.dart';
import './MainWidget/login/login_screens.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.purple,
        accentColor: Colors.amber,
        errorColor: Colors.red,
        fontFamily: 'Quicksand',
        textTheme: ThemeData.light().textTheme.copyWith(
              title: TextStyle(
                fontFamily: 'OpenSans',
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
      ),
      initialRoute: './',
      routes: {
        './':(context) => LoginScreen(),
        'mainwallet': (context) => (Mywallet()),
        'Note':(context) => MainNotes(),
        'Dashboard':(context) =>DashboardPage(),
      },
    );
  }
}





