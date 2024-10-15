import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../Core/Utils/constant_colors.dart';

class LocationListItem extends StatelessWidget
{
  const LocationListItem({super.key, required this.location, this.onPressed, required this.index});
  final void Function()? onPressed;
  final int location, index;

  @override
  Widget build(BuildContext context)
  {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
      child: MaterialButton(
        height: 65.h,
        minWidth: 150.w,
        color: location == index ? blue : white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20), side: BorderSide(color: location == index ? Colors.transparent : blue, width: 2.5)),
        onPressed: onPressed,
        child: Text(index == 0 ? 'Within Vancouver' : 'Outside Vancouver', style: TextStyle(color: location == index ? white : blue, fontWeight: FontWeight.w500, fontSize: 15.sp)),
      ),
    );
  }
}