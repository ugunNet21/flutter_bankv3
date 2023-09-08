import 'package:bank_v2/shared/theme.dart';
import 'package:flutter/material.dart';

class BankItem extends StatelessWidget {
  final String title;
  final String imageUrl;
  final VoidCallback? onTap;
  final bool isSelected;
  const BankItem({
    super.key,
    required this.title,
    required this.imageUrl,
    this.onTap,
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(
          bottom: 18,
        ),
        padding: EdgeInsets.all(22),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: whiteColor,
            border: Border.all(
              width: 2,
              color: isSelected ? blueColor : whiteColor,
            )),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              imageUrl,
              height: 30,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: blackTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: medium,
                  ),
                ),
                const SizedBox(
                  height: 2,
                ),
                Text(
                  '50 Minutes',
                  style: blackTextStyle.copyWith(
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
