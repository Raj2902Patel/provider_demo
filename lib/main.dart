import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_demo/providers/counter_provider.dart';
import 'package:provider_demo/providers/list_provider.dart';
import 'package:provider_demo/providers/movie_provider.dart';
import 'package:provider_demo/user/provider/user_provider.dart';
import 'package:provider_demo/user/view/user_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => ListModel(),
        ),
        ChangeNotifierProvider(
          create: (context) => CounterModel(),
        ),
        ChangeNotifierProvider(
          create: (context) => MovieModel(),
        ),
        ChangeNotifierProvider(
          create: (context) => UserProvider(),
        ),
      ],
      child: const MaterialApp(
        home: UserPage(),
      ),
    );
  }
}
