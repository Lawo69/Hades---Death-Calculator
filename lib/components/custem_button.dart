import 'package:flutter/material.dart';
import 'package:hades/components/custem_text.dart';
import '../utils/app_colors.dart';

class CustomButton extends StatefulWidget {
  const CustomButton({
    required this.onTap,
    required this.text,
    this.width = 156.5,
    Key? key,
  }) : super(key: key);

  final Future<void> Function() onTap;
  final String text;
  final double width;

  @override
  // ignore: library_private_types_in_public_api
  _CustomButtonState createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  bool isButtonPressed = false;
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (_) {
        setState(() {
          isButtonPressed = true;
        });
      },
      onTapUp: (_) async {
        setState(() {
          isButtonPressed = false;
          isLoading = true; 
        });

        // Call your asynchronous onTap function
        await widget.onTap();

        setState(() {
          isLoading =
              false;
        });
      },
      onTapCancel: () {
        setState(() {
          isButtonPressed = false;
        });
      },
      child: Container(
        width: widget.width,
        height: 50,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: isButtonPressed ? Colors.transparent : AppColors.primaryColor,
          borderRadius: BorderRadius.circular(5),
          border: Border.all(
            color: isButtonPressed ? AppColors.primaryColor : AppColors.primaryColor,
            width: 2,
          ),
        ),
        child: Center(
          child: isLoading
              ? const CircularProgressIndicator()
              : CustemText(
                  text: widget.text,
                  fontsize: 15,
                  color: isButtonPressed ? AppColors.white : AppColors.secondaryColor,
                  fontWeight: FontWeight.w600,
                ),
        ),
      ),
    );
  }
}