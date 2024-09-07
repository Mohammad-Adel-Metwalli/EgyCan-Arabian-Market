import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icons_plus/icons_plus.dart';
import '../../../../../Core/Utils/constant_colors.dart';
import '../../../../../Core/Utils/styles.dart';

class CustomSearchBar extends StatelessWidget
{
  const CustomSearchBar({super.key, this.onChanged,});
  final void Function(String)? onChanged;

  @override
  Widget build(BuildContext context)
  {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      child: TextFormField(
        onChanged: onChanged,
        decoration: InputDecoration(
          label: Text('Search...', style: TextStyle(color: black, fontWeight: FontWeight.w500, fontSize: 15.sp)),
          prefixIcon: Icon(FontAwesome.magnifying_glass_solid, size: 20.h, color: lightBlue),
          disabledBorder: Styles.styleOfTextFormField(),
          enabledBorder: Styles.styleOfTextFormField(),
          focusedBorder: Styles.styleOfTextFormField(),
          border: Styles.styleOfTextFormField(),
          fillColor: white,
          filled: true,
        ),
      ),
    );
  }
}