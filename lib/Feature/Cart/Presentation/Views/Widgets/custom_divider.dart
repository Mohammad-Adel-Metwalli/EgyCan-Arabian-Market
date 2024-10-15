import 'package:egycan_app/Core/Utils/constant_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomDivider extends StatelessWidget
{
  const CustomDivider({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Container(
      height: 10.h,
      width: 120.w,
      decoration: BoxDecoration(
        color: blue,
        borderRadius: BorderRadius.circular(25),
      ),
    );
  }
}
