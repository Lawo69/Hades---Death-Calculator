import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../components/custem_text.dart';
import '../../utils/app_colors.dart';

// ignore: camel_case_types
class EndScreenPage extends StatefulWidget {
  final int marks;

  const EndScreenPage({Key? key, required this.marks}) : super(key: key);

  @override
  State<EndScreenPage> createState() => _EndScreenPageState();
}

// ignore: camel_case_types
class _EndScreenPageState extends State<EndScreenPage> {

  int getCurrentDateInSeconds() {
    DateTime now = DateTime.now();
    return now.millisecondsSinceEpoch ~/ 1000;
  }



  late int point = widget.marks;
  late Timer timer;

    @override
  void initState() {
    super.initState();

    int currentSeconds = getCurrentDateInSeconds();
    point = widget.marks - currentSeconds;

    startTimer();
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }

  void startTimer() {
    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        if (point > 0) {
          point--;
        } else {
          timer.cancel();
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
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
                          color: AppColors.primaryColor,
                          fontSize: 35,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Row(
                            children: [
                              CustemText(
                                text: '${point ~/ (3600 * 24 * 365)}'.padLeft(2, '0'),
                                color: AppColors.white,
                                fontsize: 50,
                                fontWeight: FontWeight.bold,
                              ),
                              CustemText(
                                text: '  .YRS',
                                color: AppColors.white,
                                fontsize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Row(
                            children: [
                              CustemText(
                                text: '${(point % (3600 * 24 * 365)) ~/ (3600 * 24)}'.padLeft(2, '0'),
                                color: AppColors.white,
                                fontsize: 50,
                                fontWeight: FontWeight.bold,
                              ),
                              CustemText(
                                text: '  .DAY',
                                color: AppColors.white,
                                fontsize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ],
                          ), 
                          SizedBox(
                            width: 15,
                          ),
                          Row(
                            children: [
                              CustemText(
                                text: '${(point % (3600 * 24)) ~/ 3600}'.padLeft(2, '0'),
                                color: AppColors.white,
                                fontsize: 50,
                                fontWeight: FontWeight.bold,
                              ),
                              CustemText(
                                text: '  .HRS',
                                color: AppColors.white,
                                fontsize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Row(
                            children: [
                              CustemText(
                                text: '${(point % 3600) ~/ 60}'.padLeft(2, '0'),
                                color: AppColors.white,
                                fontsize: 50,
                                fontWeight: FontWeight.bold,
                              ),
                              CustemText(
                                text: '  .MIN',
                                color: AppColors.white,
                                fontsize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Row(
                            children: [
                              CustemText(
                                text: '${point % 60}'.padLeft(2, '0'),
                                color: AppColors.white,
                                fontsize: 50,
                                fontWeight: FontWeight.bold,
                              ),
                              CustemText(
                                text: '  .SEC',
                                color: AppColors.white,
                                fontsize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ],
                          ),
                        ],
                      ),
                      
                      
                    ],
                  ),
                  const SizedBox(
                      height: 10,
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
      )
    );
  }
}