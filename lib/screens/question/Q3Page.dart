import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hades/screens/question/Q4Page.dart';
import 'package:info_popup/info_popup.dart';
import '../../components/custem_text.dart';
import '../../components/custem_textfield.dart';
import '../../utils/app_colors.dart';
import '../../utils/utill_function.dart';

class Q3Page extends StatefulWidget {
  final int marks;

  const Q3Page({Key? key, required this.marks}) : super(key: key);

  @override
  State<Q3Page> createState() => _Q3PageState();
}

class _Q3PageState extends State<Q3Page> {
  final _heightController = TextEditingController();
  final _weightController = TextEditingController();
  bool isButtonEnabled = false;

  void checkConditions() {
    setState(() {
      isButtonEnabled = _heightController.text.isNotEmpty && _weightController.text.isNotEmpty;
    });
  }

  double bmi = 0.0;
  late int point = 0;

  void calculateBMI() {
    double height = double.tryParse(_heightController.text) ?? 0.0;
    double weight = double.tryParse(_weightController.text) ?? 0.0;

    if (height > 0 && weight > 0) {
      setState(() {
        bmi = weight / ((height / 100) * (height / 100));
      });
    }

    if ( bmi < 18.5) {
      point = widget.marks;
      point = point - 315569260;
    } 
    else if ( bmi < 24.9) {
      point = widget.marks;
      point = point + 10;
    }
    else if ( bmi < 29.9) {
      point = widget.marks;
      point = point + 157784630;
    }
    else {
      point = widget.marks;
      point = point - 157784630;
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
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
                const SizedBox(
                      height: 120,
                    ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustemText(
                          text: "Height (cm)", 
                          color: AppColors.white,
                          fontWeight: FontWeight.normal,
                          fontsize: 18,
                        ),
                        CustemTextfield(
                          controller: _heightController,
                          inputFormatters: [
                            FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                          ],
                          keyboardType: TextInputType.number,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustemText(
                          text: "Weight (kg)", 
                          color: AppColors.white,
                          fontWeight: FontWeight.normal,
                          fontsize: 18,
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        CustemTextfield(
                          controller: _weightController,
                          inputFormatters: [
                            FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                          ],
                          keyboardType: TextInputType.number,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 120,
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
                      contentTitle: 'Worried your weight is a black hole of health troubles? Relax, there\'s a number for that - BMI! It\'s like a fitness fortune cookie, telling you if you\'re in the "just chill" zone, the "need some exercise" zone, or the "pizza party, maybe later" zone. So grab your scale, crack the code, and get ready to unleash your healthiest self!',
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
                      onPressed: () {
                        calculateBMI();
                        UtillFunction.navigateTo(context, Q4Page(marks: point));
                      },
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