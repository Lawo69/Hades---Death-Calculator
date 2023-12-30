import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hades/components/custem_text.dart';
import 'package:hades/screens/question/Q2Page.dart';
import '../../components/custem_button.dart';
import '../../utils/app_colors.dart';
import '../../utils/utill_function.dart';
import '../question/Q1Page.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool isButtonPressedMale = false;
  @override
  Widget build(BuildContext context) {
    return  WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: SafeArea(
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
                    children: [
                      CustemText(
                        text: 'Are You\nsure\nabout\nthis?',
                        color: AppColors.white,
                        fontsize: 35,
                        fontWeight: FontWeight.bold,
                      ),
                      RichText(
                        text: TextSpan(
                          text: "Είσαι σίγουρος γι 'αυτό?",
                          style: GoogleFonts.notoSans(
                              color: AppColors.primaryColor,
                              fontSize: 15,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ],
                  ),
                  CustomButton(
                    onTap: () async {
                      UtillFunction.navigateTo(context, const Q1Page());
                      setState(() {
                        isButtonPressedMale = true;
                      });
                    },
                    text: 'let’s start', 
                    isButtonPressed: isButtonPressedMale,
                  ),
                ],
              ),
            ),
          ),
        ),
      )
    );
  }
}
