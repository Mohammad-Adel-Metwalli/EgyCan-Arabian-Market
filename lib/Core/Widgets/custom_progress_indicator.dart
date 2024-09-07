import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class CustomProgressIndicator extends StatelessWidget
{
  const CustomProgressIndicator({super.key, required this.colorOfProgressIndicator,});
  final Color colorOfProgressIndicator;

  @override
  Widget build(BuildContext context)
  {
    return SpinKitWave(
      size: 75.h,
      itemCount: 5,
      type: SpinKitWaveType.center,
      itemBuilder: (context, index) => Container(
        height: 75.h,
        width: 20.w,
        decoration: BoxDecoration(
          color: colorOfProgressIndicator,
          borderRadius: BorderRadius.circular(100),
        ),
      ),
    );
  }
}