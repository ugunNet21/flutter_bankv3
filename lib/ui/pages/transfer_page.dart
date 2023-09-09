import 'package:bank_v2/shared/theme.dart';
import 'package:bank_v2/ui/widgets/buttons.dart';
import 'package:bank_v2/ui/widgets/forms.dart';
import 'package:bank_v2/ui/widgets/transfer_recent_user_item.dart';
import 'package:bank_v2/ui/widgets/transfer_result_user_item.dart';
import 'package:flutter/material.dart';

class TransferPage extends StatelessWidget {
  const TransferPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Transfer',
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
        ),
        children: [
          const SizedBox(
            height: 30,
          ),
          Text(
            'Search',
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semibold,
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          CustomFormField(
            title: 'by username',
            isShowTitle: false,
          ),
          // buildRecentUsers(),
          buildResult(),
          const SizedBox(
            height: 274,
          ),
          CustomFiledButton(
            title: 'Continue',
            onPressed: () {
              Navigator.pushNamed(context, '/transfer-amount');
            },
          ),
          const SizedBox(
            height: 50,
          ),
        ],
      ),
    );
  }
}

Widget buildRecentUsers() {
  return Container(
    margin: const EdgeInsets.only(
      top: 40,
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Recents',
          style: blackTextStyle.copyWith(
            fontSize: 16,
            fontWeight: semibold,
          ),
        ),
        const SizedBox(
          height: 14,
        ),
        const TransferRecentUserItem(
          imageUrl: 'assets/img_friend1.png',
          name: 'Arsyfa Z.D',
          username: 'arsyfa',
          isVerified: true,
        ),
        const TransferRecentUserItem(
          imageUrl: 'assets/img_friend2.png',
          name: 'Zi',
          username: 'zi',
          isVerified: false,
        ),
        const TransferRecentUserItem(
          imageUrl: 'assets/img_friend3.png',
          name: 'May',
          username: 'may',
          isVerified: false,
        ),
      ],
    ),
  );
}

Widget buildResult() {
  return Container(
    margin: const EdgeInsets.only(
      top: 40,
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Result',
          style: blackTextStyle.copyWith(
            fontSize: 16,
            fontWeight: semibold,
          ),
        ),
        const SizedBox(
          height: 14,
        ),
        Wrap(
          spacing: 17,
          runSpacing: 17,
          children: [
            TransferResultUserItem(
              imageUrl: 'assets/pa_ade_bun.png',
              name: 'Ade Bunyamin',
              username: 'adebun',
              isVerified: true,
            ),
            TransferResultUserItem(
              imageUrl: 'assets/img_friend1.png',
              name: 'Ade Peuyeum',
              username: 'adepeuy',
              isVerified: true,
              isSelected: true,
            ),
            TransferResultUserItem(
              imageUrl: 'assets/img_friend2.png',
              name: 'Ade Baketut',
              username: 'adebeuk',
              isVerified: true,
            ),
            TransferResultUserItem(
              imageUrl: 'assets/img_friend3.png',
              name: 'Ade Jamedud',
              username: 'adebaeud',
              isVerified: true,
              isSelected: false,
            ),
          ],
        ),
      ],
    ),
  );
}
