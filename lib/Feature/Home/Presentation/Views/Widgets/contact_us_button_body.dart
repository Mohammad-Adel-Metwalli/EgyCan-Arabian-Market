import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../Core/Utils/constant_colors.dart';

class ContactUsButtonBody extends StatelessWidget
{
  const ContactUsButtonBody({super.key,});

  @override
  Widget build(BuildContext context)
  {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image(image: const AssetImage('Assets/Images/world-icon.png'), height: 30.h),

        SizedBox(width: MediaQuery.sizeOf(context).width * 0.0025),

        Text('Contact Us', style: TextStyle(color: black, fontSize: 25.sp)),
      ],
    );
  }
}