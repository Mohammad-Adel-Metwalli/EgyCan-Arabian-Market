import 'package:egycan_app/Core/Utils/constant_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class EgyCanTitle extends StatelessWidget
{
  const EgyCanTitle({super.key, required this.size, required this.fontColor,});
  final Color fontColor;
  final double size;

  @override
  Widget build(BuildContext context) => Text(MediaQuery.sizeOf(context).width <= 500 ? 'EGYCAN Arabian\nMarket' : 'EGYCAN Arabian Market', style: GoogleFonts.sonsieOne(color: fontColor, fontSize: size.sp), textAlign: fontColor == black ? TextAlign.center : TextAlign.start);
}