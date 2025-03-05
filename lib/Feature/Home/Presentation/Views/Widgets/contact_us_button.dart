import 'package:animate_do/animate_do.dart';
import 'package:egycan_app/Feature/Home/Presentation/Views/Widgets/social_media_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../Core/Utils/constant_colors.dart';
import 'contact_us_button_body.dart';

class ContactUsButton extends StatelessWidget
{
  const ContactUsButton({super.key,});

  @override
  Widget build(BuildContext context)
  {
    return SizedBox(
      height: 55.h,
      width: 250.w,
      child: MaterialButton(
        color: white,
        splashColor: black.withOpacity(0.2),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50), side: const BorderSide(color: blueGrey, width: 2.5)),
        child: const ContactUsButtonBody(),
        onPressed: () => showDialog(
          context: context,
          builder: (context) => ZoomIn(child: const SocialMediaDialog()),
        ),
      ),
    );
  }
}