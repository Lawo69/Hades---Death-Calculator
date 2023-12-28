import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hades/screens/home/home.dart';
import 'package:hades/screens/question/Q1Page.dart';
import '../../components/custem_button.dart';
import '../../components/custem_text.dart';
import '../../components/custem_textfield.dart';
import '../../utils/app_colors.dart';
import '../../utils/utill_function.dart';

class Q2Page extends StatefulWidget {
  const Q2Page({Key? key}) : super(key: key);

  @override
  State<Q2Page> createState() => _Q2PageState();
}

class _Q2PageState extends State<Q2Page> {

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

                      },
                      text: 'Male',
                      width: MediaQuery.of(context).size.width,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    CustomButton(
                      onTap: () async {

                      },
                      text: 'Female',
                      width: MediaQuery.of(context).size.width,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      color: AppColors.black,
                      child: Column (
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          IconButton(
                            onPressed: () {
                              UtillFunction.navigateTo(context, const Q2Page());
                            },
                            icon: const Icon(
                              Icons.close_outlined,
                              color: Color(0xffFFFFFF),
                              size: 14,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 0, bottom: 15, left: 15, right: 15),
                            child: CustemText(
                              text: "Yeah, Ladies still reign supreme in the longevity game, holding the keys to unlocking the most doors on Time Street.", 
                              color: AppColors.white,
                              fontsize: 10,
                              fontWeight: FontWeight.normal,
                              textalign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          onPressed: () {
                            UtillFunction.navigateTo(context, const Q1Page());
                          },
                          icon: const Icon(
                            Icons.arrow_back_ios,
                            color: Color(0xffFF8585),
                            size: 24,
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                          
                          },
                          icon: const Icon(
                            Icons.crisis_alert_outlined,
                            color: Color(0xffFF8585),
                            size: 24,
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            UtillFunction.navigateTo(context, const Home());
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
                ),
              ],
            )
          )
        )
      )
    );
  }
}