import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CommanText extends StatelessWidget {
  final String text;
  final FontWeight? weight;
  final Color? color;
  final double? fontSize;
  const CommanText(
      {super.key, required this.text, this.weight, this.color, this.fontSize});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.poppins(
        color: color ?? Colors.amber,
        fontSize: fontSize ?? 12,
        fontWeight: weight ?? FontWeight.normal,
      ),
    );
  }
}

class CommanText1 extends StatelessWidget {
  final String text;
  final FontWeight? weight;
  final Color? color;
  final double? fontSize;
  const CommanText1(
      {super.key, required this.text, this.weight, this.color, this.fontSize});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.inter(
        color: color ?? Colors.amber,
        fontSize: fontSize ?? 12,
        fontWeight: weight ?? FontWeight.normal,
      ),
    );
  }
}
