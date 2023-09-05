import 'package:bank_v2/shared/theme.dart';
import 'package:bank_v2/ui/widgets/buttons.dart';
import 'package:bank_v2/ui/widgets/forms.dart';
import 'package:flutter/material.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightBackgroundColor,
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
        ),
        children: [
          Container(
            width: 155,
            height: 50,
            margin: const EdgeInsets.only(
              top: 100,
              bottom: 100,
            ),
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/img_logo_light.png'),
              ),
            ),
          ),
          Text(
            'Sign In\n&Grow Your Finance',
            style: blackTextStyle.copyWith(
              fontSize: 20,
              fontWeight: semibold,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            padding: const EdgeInsets.all(22),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: whiteColor,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Note: Email Input
                const CustomFormField(
                  title: "Email Address",
                ),
                const SizedBox(
                  height: 16,
                ),
                const CustomFormField(
                  title: "Password",
                  obscureText: true,
                ),
                const SizedBox(
                  height: 8,
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    'Forgot Password',
                    style: blueTextStyle,
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                CustomFiledButton(
                  title: "Sign In",
                  onPressed: () {
                    Navigator.pushNamedAndRemoveUntil(
                        context, '/home', (route) => false);
                  },
                ),
                const SizedBox(
                  height: 50,
                ),
                CustomTextButton(
                  title: "Create New Account",
                  onPressed: () {
                    Navigator.pushNamedAndRemoveUntil(
                        context, '/sign-up', (route) => false);
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
