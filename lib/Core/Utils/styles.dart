import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'constant_colors.dart';

abstract class Styles
{
  static OutlineInputBorder decorationOfSearchBar() => OutlineInputBorder(borderRadius: BorderRadius.circular(100), borderSide: const BorderSide(color: black, width: 2.5));
  static OutlineInputBorder styleOfTextFormField() => OutlineInputBorder(borderRadius: BorderRadius.circular(18), borderSide: const BorderSide(color: lightBlue, width: 3.5));
  static OutlineInputBorder decorationOfDropMenu() => OutlineInputBorder(borderRadius: BorderRadius.circular(15), borderSide: const BorderSide(color: black, width: 2.5));
  static TextStyle styleOfTitleBlack = TextStyle(color: black, fontSize: 25.sp, fontWeight: FontWeight.w700);
  static TextStyle styleOfTitleBlue = TextStyle(color: blue, fontSize: 25.sp, fontWeight: FontWeight.w700);
}