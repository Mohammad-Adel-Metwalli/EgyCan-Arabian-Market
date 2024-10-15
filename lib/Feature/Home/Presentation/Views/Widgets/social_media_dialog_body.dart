import 'package:egycan_app/Feature/Home/Presentation/Views/Widgets/social_media_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../Core/Utils/constant_colors.dart';
import 'egycan_logo.dart';
import 'egycan_title.dart';

class SocialMediaDialogBody extends StatelessWidget
{
  const SocialMediaDialogBody({super.key,});

  @override
  Widget build(BuildContext context)
  {
    return Column(
      children: [
        SizedBox(height: MediaQuery.sizeOf(context).height * 0.05),

        const EgycanLogo(height: 250, width: 250),

        SizedBox(height: MediaQuery.sizeOf(context).height * 0.025),

        const EgyCanTitle(size: 20, fontColor: black),

        SizedBox(height: MediaQuery.sizeOf(context).width <= 500 ? MediaQuery.sizeOf(context).height * 0.02 : MediaQuery.sizeOf(context).height * 0.05),

        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w),
          child: const SocialMediaList(),
        ),
      ],
    );
  }
}