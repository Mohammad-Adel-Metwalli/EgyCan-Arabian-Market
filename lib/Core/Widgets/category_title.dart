import 'package:egycan_app/Core/Utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoryTitle extends StatelessWidget
{
  const CategoryTitle({super.key, required this.title,});
  final String title;

  @override
  Widget build(BuildContext context) => Padding(
    padding: EdgeInsets.only(left: 25.w),
    child: Text(title, style: Styles.styleOfTitleBlack),
  );
}