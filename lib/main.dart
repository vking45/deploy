import 'package:clubbspots/screens/client_homepage.dart';
import 'package:clubbspots/screens/home.dart';
import 'package:clubbspots/screens/loading.dart';
import 'package:clubbspots/screens/reportpage.dart';
import 'package:clubbspots/screens/reportcomplete.dart';
import 'package:clubbspots/screens/search.dart';
import 'package:clubbspots/screens/splashscreen.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      routes: {
        '/': (context) => SplashScreen(),
        '/home': (context) => MainScreen(),
        '/loading': (context) => Loading(),
        '/client_home': (context) => Home(),
        '/search': (context) => SearchBar(),
        '/report': (context) => Report(),
        '/reportcomplete': (context) => ReportCompletion(),
      },
    ));
