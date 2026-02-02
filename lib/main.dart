import 'package:flutter/material.dart';
import 'package:spacez/presentation/screens/coupon_page.dart';
import 'package:spacez/presentation/styles/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: (context, child) {
        final mediaQuery = MediaQuery.of(context);
  
        return MediaQuery(
          data: mediaQuery.copyWith(
            textScaler: const TextScaler.linear(0.9),
          ),
          child: child!,
        );
      },
      theme: ThemeData(
        scaffoldBackgroundColor: kwhite,
        appBarTheme: AppBarTheme(
          backgroundColor: kwhite,
        ),
        fontFamily: 'LexendDeca'
      ),
      home: Scaffold(
        backgroundColor: Colors.white,
        body: CouponPage(),
      ),
    );
  }
}
