import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hades/screens/question/Q6Page.dart';
import 'package:info_popup/info_popup.dart';
import '../../components/custem_button.dart';
import '../../components/custem_text.dart';
import '../../utils/app_colors.dart';
import '../../utils/utill_function.dart';

class Q5Page extends StatefulWidget {
  final int marks;

  const Q5Page({Key? key, required this.marks}) : super(key: key);

  @override
  State<Q5Page> createState() => _Q5PageState();
}

class _Q5PageState extends State<Q5Page> {
  bool isButtonPressedExercise1 = false;
  bool isButtonPressedExercise2 = false;
  bool isButtonPressedExercise3 = false;
  bool isButtonPressedExercise4 = false;

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
                      text: "Exercise", 
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
                          isButtonPressedExercise1 = true;
                          isButtonPressedExercise2 = false;
                          isButtonPressedExercise3 = false;
                          isButtonPressedExercise4 = false;
                          point = point + 31556926;
                        });
                      },
                      text: 'Daily vigorous exercise',
                      width: MediaQuery.of(context).size.width,
                      isButtonPressed: isButtonPressedExercise1,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    CustomButton(
                      onTap: () async {
                        setState(() {
                          point = widget.marks;
                          isButtonPressedExercise1 = false;
                          isButtonPressedExercise2 = true;
                          isButtonPressedExercise3 = false;
                          isButtonPressedExercise4 = false;
                          point = point + 31556926;
                        });
                      },
                      text: 'Minimum 30 min 4 days per week',
                      width: MediaQuery.of(context).size.width,
                      isButtonPressed: isButtonPressedExercise2,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    CustomButton(
                      onTap: () async {
                        setState(() {
                          point = widget.marks;
                          isButtonPressedExercise1 = false;
                          isButtonPressedExercise2 = false;
                          isButtonPressedExercise3 = true;
                          isButtonPressedExercise4 = false;
                          point = point - 10;
                        });
                      },
                      text: 'Somewhat active',
                      width: MediaQuery.of(context).size.width,
                      isButtonPressed: isButtonPressedExercise3,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    CustomButton(
                      onTap: () async {
                        setState(() {
                          point = widget.marks;
                          isButtonPressedExercise1 = false;
                          isButtonPressedExercise2 = false;
                          isButtonPressedExercise3 = false;
                          isButtonPressedExercise4 = true;
                          point = point - 94670778;
                        });
                      },
                      text: 'Not active',
                      width: MediaQuery.of(context).size.width,
                      isButtonPressed: isButtonPressedExercise4,
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
                      contentTitle: 'Imagine a world where your daily routine is your personal superhero suit, protecting you from villains like heart disease and cancer, two of the deadliest foes we face. Sounds pretty epic, right? Well, that\'s exactly what an active lifestyle can offer!',
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
                      onPressed: isButtonPressedExercise1 || isButtonPressedExercise2 || isButtonPressedExercise3 || isButtonPressedExercise4
                    ? () {
                        UtillFunction.navigateTo(context, Q6Page(marks: point));
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