import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hades/screens/home/endscreen.dart';
import 'package:info_popup/info_popup.dart';
import '../../components/custem_button.dart';
import '../../components/custem_text.dart';
import '../../utils/app_colors.dart';
import '../../utils/utill_function.dart';

class Q10Page extends StatefulWidget {
  final int marks;

  const Q10Page({Key? key, required this.marks}) : super(key: key);

  @override
  State<Q10Page> createState() => _Q10PageState();
}

class _Q10PageState extends State<Q10Page> {
  bool isButtonPressedSleep1 = false;
  bool isButtonPressedSleep2 = false;
  bool isButtonPressedSleep3 = false;

  late int point = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.secondaryColor,
        body: Center(
          child: Container(
            padding: const EdgeInsets.all(35),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RichText(
                  text: TextSpan(
                    text: 'ᾍδης',
                    style: GoogleFonts.notoSans(
                        color: AppColors.white,
                        fontSize: 35,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustemText(
                      text: "Sleeping time", 
                      color: AppColors.white,
                      fontWeight: FontWeight.normal,
                      fontsize: 18,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    CustomButton(
                      onTap: () async {
                        setState(() {
                          point = widget.marks;
                          isButtonPressedSleep1 = true;
                          isButtonPressedSleep2 = false;
                          isButtonPressedSleep3 = false;
                          point = point - 31556926;
                        });
                      },
                      text: 'More than 8 hours',
                      width: MediaQuery.of(context).size.width,
                      isButtonPressed: isButtonPressedSleep1,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    CustomButton(
                      onTap: () async {
                        setState(() {
                          point = widget.marks;
                          isButtonPressedSleep1 = false;
                          isButtonPressedSleep2 = true;
                          isButtonPressedSleep3 = false;
                          point = point - 10;
                        });
                      },
                      text: '5 hours',
                      width: MediaQuery.of(context).size.width,
                      isButtonPressed: isButtonPressedSleep2,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    CustomButton(
                      onTap: () async {
                        setState(() {
                          point = widget.marks;
                          isButtonPressedSleep1 = false;
                          isButtonPressedSleep2 = false;
                          isButtonPressedSleep3 = true;
                          point = point - 189341556;
                        });
                      },
                      text: 'Less than 3 hours',
                      width: MediaQuery.of(context).size.width,
                      isButtonPressed: isButtonPressedSleep3,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      icon: const Icon(
                        Icons.arrow_back_ios,
                        color: Color(0xffFF8585),
                        size: 24,
                      ),
                    ),
                    InfoPopupWidget(
                      contentTitle: 'Sleep tight, fight strong! Every snooze fuels your inner hero, boosting health, happiness, and brainpower. Skimp on shut-eye? You\'re inviting grumpy gremlins and health villains.',
                      contentTheme: InfoPopupContentTheme(contentPadding: const EdgeInsets.all(15),
                        infoContainerBackgroundColor: AppColors.black,
                        infoTextStyle: TextStyle(
                          color: AppColors.white,
                          height: 1.5,
                          fontSize: 10,
                        )
                      ),
                      child: const Icon(
                        Icons.info,
                        color: Color(0xffFF8585),
                        size: 24,
                      ),
                    ),
                    IconButton(
                      onPressed: isButtonPressedSleep1 || isButtonPressedSleep2 || isButtonPressedSleep3
                    ? () {
                        UtillFunction.navigateTo(context, EndScreenPage(marks: point));
                      }
                    : null,
                      icon: const Icon(
                        Icons.arrow_forward_ios,
                        color: Color(0xffFF8585),
                        size: 24,
                      ),
                    ),
                  ],
                ),
              ],
            )
          )
        )
      )
    );
  }
}