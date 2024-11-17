import 'package:church_mobile/features/on_boarding/presentation/view/widget/on_boarding_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: OnBoardingViewBody(),
      ),
    );
  }
}
