import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../../Core/Utils/constant_colors.dart';

class ShowProductsOfCategoryBody extends StatelessWidget
{
  const ShowProductsOfCategoryBody({super.key,});

  @override
  Widget build(BuildContext context)
  {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('View All', style: GoogleFonts.raleway(color: white, fontWeight: FontWeight.bold, fontSize: 17.sp)),

          Icon(Icons.chevron_right_rounded, color: white, size: 30.h),
        ],
      ),
    );
  }
}