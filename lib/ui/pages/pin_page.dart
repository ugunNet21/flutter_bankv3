import 'package:bank_v2/shared/shared_methods.dart';
import 'package:bank_v2/shared/theme.dart';
import 'package:bank_v2/ui/widgets/buttons.dart';
import 'package:flutter/material.dart';

class PinPage extends StatefulWidget {
  const PinPage({super.key});

  @override
  State<PinPage> createState() => _PinPageState();
}

class _PinPageState extends State<PinPage> {
  final TextEditingController pinController = TextEditingController();

  addPin(String number) {
    if (pinController.text.length < 6) {
      setState(() {
        pinController.text = pinController.text + number;
      });
    }
    if (pinController.text.length == 6) {
      if (pinController.text == '123456') {
        Navigator.pop(context, true);
      } else {
        showCustomSnackbar(
            context, 'PIN yang anda masukkan salah. Silakan coba lagi.');
      }
    }
  }

  deletePin() {
    if (pinController.text.isNotEmpty) {
      setState(() {
        pinController.text =
            pinController.text.substring(0, pinController.text.length - 1);
      });
    }
    // print(pinController.text);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkBackgroundColor,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 58,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'PIN',
                style: whiteTextStyle.copyWith(
                  fontSize: 20,
                  fontWeight: semibold,
                ),
              ),
              const SizedBox(
                height: 70,
              ),
              SizedBox(
                width: 200,
                child: TextFormField(
                  controller: pinController,
                  obscureText: true,
                  cursorColor: greyColor,
                  obscuringCharacter: '*',
                  enabled: false,
                  style: greyTextStyle.copyWith(
                    fontSize: 36,
                    fontWeight: medium,
                    letterSpacing: 16,
                  ),
                  decoration: InputDecoration(
                    disabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: greyColor,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 66,
              ),
              Wrap(
                spacing: 20,
                runSpacing: 20,
                children: [
                  CustomInputButton(
                    title: '1',
                    onTap: () {
                      addPin('1');
                    },
                  ),
                  CustomInputButton(
                    title: '2',
                    onTap: () {
                      addPin('2');
                    },
                  ),
                  CustomInputButton(
                    title: '3',
                    onTap: () {
                      addPin('3');
                    },
                  ),
                  CustomInputButton(
                    title: '4',
                    onTap: () {
                      addPin('4');
                    },
                  ),
                  CustomInputButton(
                    title: '5',
                    onTap: () {
                      addPin('5');
                    },
                  ),
                  CustomInputButton(
                    title: '6',
                    onTap: () {
                      addPin('6');
                    },
                  ),
                  CustomInputButton(
                    title: '7',
                    onTap: () {
                      addPin('7');
                    },
                  ),
                  CustomInputButton(
                    title: '8',
                    onTap: () {
                      addPin('8');
                    },
                  ),
                  CustomInputButton(
                    title: '9',
                    onTap: () {
                      addPin('9');
                    },
                  ),
                  const SizedBox(
                    height: 60,
                    width: 60,
                  ),
                  CustomInputButton(
                    title: '0',
                    onTap: () {
                      addPin('0');
                    },
                  ),
                  GestureDetector(
                    onTap: () {
                      deletePin();
                    },
                    child: Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: numberBackgroundColor,
                      ),
                      child: Center(
                        child: Icon(
                          Icons.arrow_back,
                          color: greyColor,
                          size: 24,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
