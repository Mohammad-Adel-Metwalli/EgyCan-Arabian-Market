import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../Core/Utils/constant_colors.dart';

class EgycanLogo extends StatelessWidget
{
  const EgycanLogo({super.key, required this.height, required this.width,});
  final double height, width;

  @override
  Widget build(BuildContext context)
  {
    return Container(
      height: height.h,
      width: width.w,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: pyramidsColor, width: 4.5),
        image: const DecorationImage(image: AssetImage('Assets/Images/EgyCan-logo.png'), fit: BoxFit.cover),
      ),
    );
  }
}