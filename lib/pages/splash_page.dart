import 'package:flutter/material.dart';
import 'package:uzum/components/constants/AppImages.dart';
import 'package:uzum/pages/home/main_page.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3)).then((value) =>
        Navigator.pushAndRemoveUntil(context,
            MaterialPageRoute(builder: (_) => const MainPage()), (route) => false));

    return Scaffold(
      body: Center(
        child: Image.asset(
          AppImages.logo,
          width: 120,
        ),
      ),
    );
  }
}
