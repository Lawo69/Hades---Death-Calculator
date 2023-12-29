import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hades/screens/question/Q2Page.dart';
import 'package:info_popup/info_popup.dart';
import '../../components/custem_text.dart';
import '../../components/custem_textfield.dart';
import '../../utils/app_colors.dart';
import '../../utils/utill_function.dart';

class Q1Page extends StatefulWidget {
  const Q1Page({Key? key}) : super(key: key);

  @override
  State<Q1Page> createState() => _Q1PageState();
}

class _Q1PageState extends State<Q1Page> {
  final _nameController = TextEditingController();
  final _bdayController = TextEditingController();

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
                const SizedBox(
                      height: 90,
                    ),
                
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustemText(
                      text: "Name", 
                      color: AppColors.white,
                      fontWeight: FontWeight.normal,
                      fontsize: 18,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    CustemTextfield(
                      controller: _nameController,
                      width: MediaQuery.of(context).size.width,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    CustemText(
                      text: "Birthdate", 
                      color: AppColors.white,
                      fontWeight: FontWeight.normal,
                      fontsize: 18,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    CustemTextfield(
                      controller: _bdayController,
                      hintText: '28 Dec 2023',
                      prefixIcon: const Icon(Icons.calendar_today_outlined),
                      width: MediaQuery.of(context).size.width,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 90,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(
                      width: 50,
                    ),
                    InfoPopupWidget(
                      contentTitle: 'Forget crystal balls, your birthday is the best clue to your expiration date! Life expectancy keeps soaring, fueled by health-savvy choices and medical marvels. But guess what?',
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
                        UtillFunction.navigateTo(context, const Q2Page());
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