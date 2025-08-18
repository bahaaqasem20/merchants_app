import 'package:flutter/material.dart';
import 'package:merchants_training/core/utils/app_assets.dart';
import 'dart:async';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  _SplashViewBodyState createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {

  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, '/home_view');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              AppAssets.logo,
              width: 150,
              height: 150,
            ),

          ],
        ),
      ),
    );
  }
}
