import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icons_plus/icons_plus.dart';
import '../../../../../Core/Utils/constant_colors.dart';

class DeleteProductButtonBody extends StatelessWidget
{
  const DeleteProductButtonBody({super.key,});

  @override
  Widget build(BuildContext context)
  {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(MingCute.delete_2_fill, color: white, size: 25.h),

        SizedBox(width: MediaQuery.sizeOf(context).width * 0.01),

        Text('Delete', style: TextStyle(color: white, fontSize: 20.sp, fontWeight: FontWeight.w600)),
      ],
    );
  }
}