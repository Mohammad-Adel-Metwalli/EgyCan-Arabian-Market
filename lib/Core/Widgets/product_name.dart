import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../Utils/constant_colors.dart';

class ProductName extends StatelessWidget
{
  const ProductName({super.key, required this.productName,});
  final String productName;

  @override
  Widget build(BuildContext context)
  {
    return SizedBox(
      height: 50.h,
      width: double.infinity,
      child: Center(child: Text(productName, style: TextStyle(color: black, fontWeight: FontWeight.w600, fontSize: 18.sp), maxLines: 2, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center)),
    );
  }
}