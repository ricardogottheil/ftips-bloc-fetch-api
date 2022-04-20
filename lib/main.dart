import 'package:flutter/material.dart';
import 'package:ftips_bloc_fetch_api/pages/covid_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Covid-19 app example with BLOC',
      initialRoute: '/',
      routes: {
        '/': (_) => const CovidPage(),
      },
    );
  }
}
