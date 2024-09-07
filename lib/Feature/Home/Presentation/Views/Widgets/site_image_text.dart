import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../Core/Utils/constant_colors.dart';

class SiteImageText extends StatelessWidget
{
  const SiteImageText({super.key,});

  @override
  Widget build(BuildContext context)
  {
    return Positioned(
      top: 50.h,
      left: 50.w,
      child: Column(
        children: [
          Text('EgyCan', style: TextStyle(color: white, fontSize: 40.sp, fontWeight: FontWeight.w500), textAlign: TextAlign.center),

          Text('Egyptian food 100%', style: TextStyle(color: white, fontSize: 20.sp, fontWeight: FontWeight.w500), textAlign: TextAlign.center),
        ],
      ),
    );
  }
}