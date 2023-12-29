import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../components/custem_text.dart';
import '../../utils/app_colors.dart';

// ignore: camel_case_types
class endScreenPage extends StatefulWidget {
  const endScreenPage({Key? key}) : super(key: key);

  @override
  State<endScreenPage> createState() => _endScreenPageState();
}

// ignore: camel_case_types
class _endScreenPageState extends State<endScreenPage> {
  bool isContainerVisible = false;

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
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustemText(
                          text: '46',
                          color: AppColors.white,
                          fontsize: 35,
                          fontWeight: FontWeight.bold,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        CustemText(
                          text: 'YRS',
                          color: AppColors.white,
                          fontsize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ],
                    ),
                    const SizedBox(
                        height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustemText(
                          text: '49',
                          color: AppColors.white,
                          fontsize: 35,
                          fontWeight: FontWeight.bold,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        CustemText(
                          text: 'DAY',
                          color: AppColors.white,
                          fontsize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ],
                    ),
                    const SizedBox(
                        height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustemText(
                          text: '01',
                          color: AppColors.white,
                          fontsize: 35,
                          fontWeight: FontWeight.bold,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        CustemText(
                          text: 'HRS',
                          color: AppColors.white,
                          fontsize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ],
                    ),
                    const SizedBox(
                        height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustemText(
                          text: '05',
                          color: AppColors.white,
                          fontsize: 35,
                          fontWeight: FontWeight.bold,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        CustemText(
                          text: 'MIN',
                          color: AppColors.white,
                          fontsize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ],
                    ),
                    const SizedBox(
                        height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustemText(
                          text: '44',
                          color: AppColors.white,
                          fontsize: 35,
                          fontWeight: FontWeight.bold,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        CustemText(
                          text: 'SEC',
                          color: AppColors.white,
                          fontsize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ],
                    ),
                  ],
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                        height: 10,
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