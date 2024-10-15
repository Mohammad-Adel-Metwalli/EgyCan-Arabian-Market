import 'package:egycan_app/Core/Utils/constant_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:icons_plus/icons_plus.dart';
import '../../../../../Core/Utils/styles.dart';

class CustomTextFormField extends StatelessWidget
{
  const CustomTextFormField({super.key, this.onChanged,});
  final void Function(String)? onChanged;

  @override
  Widget build(BuildContext context)
  {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      child: TextFormField(
        style: GoogleFonts.poppins(color: black, fontWeight: FontWeight.w500, fontSize: 16.sp),
        validator: (data)
        {
          if(data!.isEmpty)
          {
            return 'Username is required';
          }
          return null;
        },
        onChanged: onChanged,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(vertical: 22.h),
          label: Text('username', style: Styles.styleOfFontTextFormFieldBlack16),
          prefixIcon: Icon(HeroIcons.user, color: lightBlue, size: 25.h),
          disabledBorder: Styles.styleOfCartTextFormField(),
          enabledBorder: Styles.styleOfCartTextFormField(),
          focusedBorder: Styles.styleOfCartTextFormField(),
          border: Styles.styleOfCartTextFormField(),
        ),
      ),
    );
  }
}