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
    Future.delayed(const Duration(seconds: 3), (){
      Navigator.pushReplacementNamed(context, '/login_view');
    });

    // Timer(const Duration(seconds: 3), () {
    //   Navigator.pushReplacementNamed(context, '/login_view');
    // });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFF4B6CB7), Color(0xFF182848)],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
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
