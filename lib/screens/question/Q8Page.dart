import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hades/screens/question/Q9Page.dart';
import 'package:info_popup/info_popup.dart';
import '../../components/custem_button.dart';
import '../../components/custem_text.dart';
import '../../utils/app_colors.dart';
import '../../utils/utill_function.dart';

class Q8Page extends StatefulWidget {
  final int marks;

  const Q8Page({Key? key, required this.marks}) : super(key: key);

  @override
  State<Q8Page> createState() => _Q8PageState();
}

class _Q8PageState extends State<Q8Page> {
  bool isButtonPressedSmoke1 = false;
  bool isButtonPressedSmoke2 = false;
  bool isButtonPressedSmoke3 = false;
  bool isButtonPressedSmoke4 = false;

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
                      text: "Smoking", 
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
                          isButtonPressedSmoke1 = true;
                          isButtonPressedSmoke2 = false;
                          isButtonPressedSmoke3 = false;
                          isButtonPressedSmoke4 = false;
                          point = point + 31556926;
                        });
                      },
                      text: 'Never smoked',
                      width: MediaQuery.of(context).size.width,
                      isButtonPressed: isButtonPressedSmoke1,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    CustomButton(
                      onTap: () async {
                        setState(() {
                          point = widget.marks;
                          isButtonPressedSmoke1 = false;
                          isButtonPressedSmoke2 = true;
                          isButtonPressedSmoke3 = false;
                          isButtonPressedSmoke4 = false;
                          point = point + 31556926;
                        });
                      },
                      text: 'Quit more than 2 years ago',
                      width: MediaQuery.of(context).size.width,
                      isButtonPressed: isButtonPressedSmoke2,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    CustomButton(
                      onTap: () async {
                        setState(() {
                          point = widget.marks;
                          isButtonPressedSmoke1 = false;
                          isButtonPressedSmoke2 = false;
                          isButtonPressedSmoke3 = true;
                          isButtonPressedSmoke4 = false;
                          point = point - 63113852;
                        });
                      },
                      text: 'Smoke less than 5 per week',
                      width: MediaQuery.of(context).size.width,
                      isButtonPressed: isButtonPressedSmoke3,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    CustomButton(
                      onTap: () async {
                        setState(() {
                          point = widget.marks;
                          isButtonPressedSmoke1 = false;
                          isButtonPressedSmoke2 = false;
                          isButtonPressedSmoke3 = false;
                          isButtonPressedSmoke4 = true;
                          point = point - 126227704;
                        });
                      },
                      text: 'Smoke more than 5 per day',
                      width: MediaQuery.of(context).size.width,
                      isButtonPressed: isButtonPressedSmoke4,
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
                      contentTitle: 'Ditch the Puff, Embrace the Breath! Every year, over 400,000 lives are lost to the smoke-filled shadow of cigarettes. But here\'s the good news: quitting is your ultimate power move. Ditch the tobacco torch and watch your risk of lung cancer and heart disease plummet faster than a superhero taking flight!',
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
                      onPressed: isButtonPressedSmoke1 || isButtonPressedSmoke2 || isButtonPressedSmoke3 || isButtonPressedSmoke4
                    ? () {
                        UtillFunction.navigateTo(context, Q9Page(marks: point));
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