import 'package:bank_v2/shared/theme.dart';
import 'package:bank_v2/ui/widgets/bank_item.dart';
import 'package:bank_v2/ui/widgets/buttons.dart';
import 'package:flutter/material.dart';

class TopupPage extends StatelessWidget {
  const TopupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Topup',
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
            'Wallet',
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semibold,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Image.asset(
                'assets/img_wallet.png',
                width: 80,
              ),
              const SizedBox(
                width: 16,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '088888888',
                    style: blackTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: medium,
                    ),
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  Text(
                    'Arsyfa Z.D',
                    style: greyTextStyle.copyWith(
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 18,
          ),
          GestureDetector(
            child: Text(
              'Select Bank',
              style: blackTextStyle.copyWith(
                fontSize: 16,
                fontWeight: semibold,
              ),
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          BankItem(
            title: 'BCA',
            imageUrl: 'assets/img_bank_bca.png',
            // onTap: () {
            //   Navigator.pushNamed(context, '/home');
            // },
          ),
          BankItem(
            title: 'BNI',
            imageUrl: 'assets/img_bank_bni.png',
            isSelected: true,
          ),
          BankItem(
            title: 'Mandiri',
            imageUrl: 'assets/img_bank_mandiri.png',
          ),
          BankItem(
            title: 'OCBC',
            imageUrl: 'assets/img_bank_ocbc.png',
          ),
          const SizedBox(
            height: 16,
          ),
          CustomFiledButton(
            title: 'Continue',
            onPressed: () {
              Navigator.pushNamed(context, '/topup-amount');
            },
          ),
          const SizedBox(
            height: 40,
          ),
        ],
      ),
    );
  }
}
