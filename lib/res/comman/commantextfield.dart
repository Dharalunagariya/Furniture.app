import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Commantextfield extends StatelessWidget {
  final String? hintStyle;
  final String? hinttext;
  final double? fontSize;
  final FontWeight? weight;
  final Color? color;
  final Border? border;
  final Icon? icon;

  const Commantextfield({
    super.key,
    this.hinttext,
    this.fontSize,
    this.color,
    this.hintStyle,
    this.border,
    this.icon,
    this.weight,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: 1,
      decoration: InputDecoration(
          hintText: hinttext ?? '',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4),
            borderSide: BorderSide(color: Color(0xffE0E0E0), width: 1.0),
          ),
          suffixIcon: icon,
          hintStyle: GoogleFonts.inter(
            fontSize: fontSize ?? 20,
            color: color ?? Colors.amber,
            fontWeight: weight ?? FontWeight.normal,
          )),
    );
  }
}
