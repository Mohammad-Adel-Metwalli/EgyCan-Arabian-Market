import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../Core/Utils/constant_colors.dart';
import 'egycan_logo.dart';
import 'egycan_title.dart';
import 'egycan_title_and_contact_us_button.dart';

class CustomHomeAppBarBody extends StatefulWidget
{
  const CustomHomeAppBarBody({super.key,});

  @override
  State<CustomHomeAppBarBody> createState() => _CustomHomeAppBarBodyState();
}

class _CustomHomeAppBarBodyState extends State<CustomHomeAppBarBody>
{
  @override
  Widget build(BuildContext context)
  {
    return Row(
      children: [
        SizedBox(width: MediaQuery.sizeOf(context).width * 0.02),

        EgycanLogo(height: MediaQuery.sizeOf(context).width <= 500 ? 100 : 150, width: MediaQuery.sizeOf(context).width <= 500 ? 100 : 150),

        SizedBox(width: MediaQuery.sizeOf(context).width * 0.02),

        MediaQuery.sizeOf(context).width <= 500 ? Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const EgyCanTitle(size: 20, fontColor: white),

            Text('EgyCan©${DateTime.now().year}', style: TextStyle(color: white, fontSize: 16.sp)),
          ],
        ) : Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: MediaQuery.sizeOf(context).height * 0.01),

            const EgycanTitleAndContactUsButton(),

            SizedBox(height: MediaQuery.sizeOf(context).width <= 995 ? MediaQuery.sizeOf(context).height * 0.07 : MediaQuery.sizeOf(context).height * 0.035),
          ],
        ),
      ],
    );
  }
}