import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hades/screens/question/Q7Page.dart';
import 'package:info_popup/info_popup.dart';
import '../../components/custem_button.dart';
import '../../components/custem_text.dart';
import '../../utils/app_colors.dart';
import '../../utils/utill_function.dart';

class Q6Page extends StatefulWidget {
  final int marks;

  const Q6Page({Key? key, required this.marks}) : super(key: key);

  @override
  State<Q6Page> createState() => _Q6PageState();
}

class _Q6PageState extends State<Q6Page> {
  bool isButtonPressedDiet1 = false;
  bool isButtonPressedDiet2 = false;
  bool isButtonPressedDiet3 = false;

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
                      text: "Diet", 
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
                          isButtonPressedDiet1 = true;
                          isButtonPressedDiet2 = false;
                          isButtonPressedDiet3 = false;
                          point = point + 63113852;
                        });
                      },
                      text: 'Fruits and vegetables',
                      width: MediaQuery.of(context).size.width,
                      isButtonPressed: isButtonPressedDiet1,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    CustomButton(
                      onTap: () async {
                        setState(() {
                          point = widget.marks;
                          isButtonPressedDiet1 = false;
                          isButtonPressedDiet2 = true;
                          isButtonPressedDiet3 = false;
                          point = point - 50;
                        });
                      },
                      text: 'Average amount of healthy & fast',
                      width: MediaQuery.of(context).size.width,
                      isButtonPressed: isButtonPressedDiet2,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    CustomButton(
                      onTap: () async {
                        setState(() {
                          point = widget.marks;
                          isButtonPressedDiet1 = false;
                          isButtonPressedDiet2 = false;
                          isButtonPressedDiet3 = true;
                          point = point - 31556926;
                        });
                      },
                      text: 'Fast or processed foods regularly',
                      width: MediaQuery.of(context).size.width,
                      isButtonPressed: isButtonPressedDiet3,
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
                      contentTitle: 'Swap burger blasters for veggie rainbows! Ditch the cholesterol-coated red meat and junk food. 5 vibrant fruits & veggies daily fuel your body\'s superhero adventure. Fight disease with antioxidant blasts and whole-grain goodness. Get healthy, get colorful, get awesome!',
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
                      onPressed: isButtonPressedDiet1 || isButtonPressedDiet2 || isButtonPressedDiet3
                    ? () {
                        UtillFunction.navigateTo(context, Q7Page(marks: point));
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