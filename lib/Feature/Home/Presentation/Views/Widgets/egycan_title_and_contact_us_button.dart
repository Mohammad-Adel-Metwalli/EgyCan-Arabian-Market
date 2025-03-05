import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../Core/Utils/constant_colors.dart';
import 'contact_us_button.dart';
import 'egycan_title.dart';

class EgycanTitleAndContactUsButton extends StatelessWidget
{
  const EgycanTitleAndContactUsButton({super.key,});

  @override
  Widget build(BuildContext context)
  {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        EgyCanTitle(size: MediaQuery.sizeOf(context).width <= 1040 ? 40 : 60, fontColor: white),

        Row(
          children: [
            const ContactUsButton(),

            SizedBox(width: MediaQuery.sizeOf(context).width * 0.01),

            Text('EgyCan©${DateTime.now().year}', style: TextStyle(color: white, fontSize: 16.sp, fontWeight: FontWeight.bold)),
          ],
        ),
      ],
    );
  }
}