import 'package:clean_architecture_with_flutter/src/core/utils/services/service_locator.dart';
import 'package:clean_architecture_with_flutter/src/features/movies/presentation/ui/screens/movies_screen.dart';
import 'package:flutter/material.dart';

void main() {
  ServiceLocator().init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Movies App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MainMoviesScreen(),
    );
  }
}
