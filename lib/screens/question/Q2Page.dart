import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hades/screens/question/Q3Page.dart';
import 'package:info_popup/info_popup.dart';
import '../../components/custem_button.dart';
import '../../components/custem_text.dart';
import '../../utils/app_colors.dart';
import '../../utils/utill_function.dart';

class Q2Page extends StatefulWidget {
  final int marks;

  const Q2Page({Key? key, required this.marks}) : super(key: key);

  @override
  State<Q2Page> createState() => _Q2PageState();
}

class _Q2PageState extends State<Q2Page> {
  bool isButtonPressedMale = false;
  bool isButtonPressedFemale = false;

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
                      text: "Gender", 
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
                          isButtonPressedMale = true;
                          isButtonPressedFemale = false;
                          point = point + 2303655598;
                        });
                      },
                      text: 'Male',
                      width: MediaQuery.of(context).size.width,
                      isButtonPressed: isButtonPressedMale,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    CustomButton(
                      onTap: () async {
                        setState(() {
                          point = widget.marks;
                          isButtonPressedMale = false;
                          isButtonPressedFemale = true;
                          point = point + 2429883302;
                        });
                      },
                      text: 'Female',
                      width: MediaQuery.of(context).size.width,
                      isButtonPressed: isButtonPressedFemale,
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
                      contentTitle: 'Yeah, Ladies still reign supreme in the longevity game, holding the keys to unlocking the most doors on Time Street.',
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
                      onPressed: isButtonPressedMale || isButtonPressedFemale
                    ? () {
                        UtillFunction.navigateTo(context, Q3Page(marks: point));
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