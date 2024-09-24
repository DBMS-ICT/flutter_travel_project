import 'package:flutter/material.dart';
import 'package:travel/book_flight_screen.dart';
import 'package:travel/landing_page.dart';
import 'package:travel/search_flight_page.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
      scaffoldBackgroundColor: const Color.fromRGBO(65, 148, 207, 1.0),
    ),
    initialRoute: '/',
    routes: {
      '/': (context) => const LandingPage(),
      '/SearchFly': (context) => const SearchFlightPage(),
      '/bookfly': (context) => const BookFlightScreen()
    },
  ));
}
