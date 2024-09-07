import 'package:egycan_app/Feature/Home/Presentation/Views/Widgets/social_media_dialog_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../Core/Utils/constant_colors.dart';

class SocialMediaDialog extends StatelessWidget
{
  const SocialMediaDialog({super.key,});

  @override
  Widget build(BuildContext context)
  {
    return Dialog(
      backgroundColor: white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
      child: Container(
        height: MediaQuery.sizeOf(context).width <= 500 ? 510.h : 480.h,
        width: 450.w,
        decoration: BoxDecoration(
          color: white,
          borderRadius: BorderRadius.circular(50),
          border: Border.all(color: blueGrey, width: 3.5),
        ),

        child: const SocialMediaDialogBody(),
      ),
    );
  }
}