import 'package:flutter/material.dart';

import '../../shared/theme.dart';
import '../widgets/buttons.dart';
import '../widgets/forms.dart';

class ProfileEditPage extends StatelessWidget {
  const ProfileEditPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit Profile'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
        ),
        children: [
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
                const CustomFormField(
                  title: "Username",
                ),
                // Note: Email Input
                const CustomFormField(
                  title: "Full Name",
                ),
                const SizedBox(
                  height: 16,
                ),
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
                  height: 30,
                ),
                const SizedBox(),
                CustomFiledButton(
                  title: "Update now",
                  onPressed: () {
                    Navigator.pushNamedAndRemoveUntil(
                        context, '/profile-edit-success', (route) => false);
                  },
                ),
                const SizedBox(
                  height: 50,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
