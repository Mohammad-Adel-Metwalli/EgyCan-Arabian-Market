import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../Utils/constant_colors.dart';

class ShowMoreButtonBody extends StatelessWidget
{
  const ShowMoreButtonBody({super.key,});

  @override
  Widget build(BuildContext context)
  {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(width: MediaQuery.sizeOf(context).width * 0.01),

        Text('Show more', style: TextStyle(color: white, fontSize: 20.sp, fontWeight: FontWeight.w400)),

        Icon(Icons.chevron_right_rounded, color: white, size: 35.h),
      ],
    );
  }
}