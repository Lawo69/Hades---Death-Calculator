import 'package:flutter/material.dart';
import 'package:hades/components/custem_text.dart';
import '../utils/app_colors.dart';

// Inside CustomButton widget
class CustomButton extends StatefulWidget {
  const CustomButton({
    required this.onTap,
    required this.text,
    required this.isButtonPressed, // Add this line
    this.width = 156.5,
    Key? key,
  }) : super(key: key);

  final Future<void> Function() onTap;
  final String text;
  final double width;
  final bool isButtonPressed; // Add this line

  @override
  _CustomButtonState createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        // Update the isButtonPressed in the parent (_Q2PageState)
        if (!widget.isButtonPressed) {
          setState(() {
            isLoading = true;
          });
          await widget.onTap();
          setState(() {
            isLoading = false;
          });
        }
      },
      child: Container(
        width: widget.width,
        height: 50,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: widget.isButtonPressed
              ? Colors.transparent
              : AppColors.primaryColor,
          borderRadius: BorderRadius.circular(5),
          border: Border.all(
            color: AppColors.primaryColor,
            width: 2,
          ),
        ),
        child: Center(
          child: isLoading
              ? const CircularProgressIndicator()
              : CustemText(
                  text: widget.text,
                  fontsize: 15,
                  color: widget.isButtonPressed
                      ? AppColors.white
                      : AppColors.secondaryColor,
                  fontWeight: FontWeight.w600,
                ),
        ),
      ),
    );
  }
}
