import 'package:church_mobile/features/auth/presentation/view/login/widget/login_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: LoginViewBody(),
      ),
    );
  }
}
