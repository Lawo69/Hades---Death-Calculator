import 'package:flutter/material.dart';

class CustemTextfield extends StatefulWidget {
  const CustemTextfield({
    Key? key,
    required this.controller,
    this.hintText = "",
    this.fontWeight = FontWeight.w600,
    this.prefixIcon,
    this.fillColor = Colors.transparent,
    this.hintTextColor = const Color(0xff858585),
    this.iconColor = const Color(0xffFF8585),
    this.width = 144,
  }) : super(key: key);

  final TextEditingController controller;
  final String hintText;
  final FontWeight fontWeight;
  final Icon? prefixIcon;
  final Color fillColor;
  final Color hintTextColor;
  final Color iconColor;
  final double width;

  @override
  // ignore: library_private_types_in_public_api
  _CustemTextfieldState createState() => _CustemTextfieldState();
}

class _CustemTextfieldState extends State<CustemTextfield> {

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.width,
      child: TextField(
        controller: widget.controller,
        style: const TextStyle(
            color: Color(0xffffffff),
            fontWeight: FontWeight.w600,
            fontSize: 15,
        ),
        decoration: InputDecoration(
          fillColor: widget.fillColor,
          filled: true,
          hintText: widget.hintText,
          hintStyle: TextStyle(
            color: widget.hintTextColor,
            fontWeight: widget.fontWeight,
          ),
          
          prefixIcon: widget.prefixIcon != null ? Icon(widget.prefixIcon!.icon, color: widget.iconColor) : null,
          iconColor: const Color(0xffFF8585),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: const BorderSide(color: Color(0xffFF8585)),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: const BorderSide(color: Color(0xffFF8585)),
          ),
        ),
      ),
    );
  }
}