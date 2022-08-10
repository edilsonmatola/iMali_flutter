import 'package:flutter/material.dart';
import 'package:imali_flutter/src/constants/constants.dart';
import 'package:imali_flutter/src/tv_page/presentation/tv_page.dart';

import 'src/home_page/presentation/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/tv': (context) => const TvPage(),
      },
      color: AppColors.corPrimaria,
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}
