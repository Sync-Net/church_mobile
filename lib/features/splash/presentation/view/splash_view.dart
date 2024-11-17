import 'package:church_mobile/features/splash/presentation/view/widget/splash_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SplashViewBody(),
      ),
    );
  }
}
