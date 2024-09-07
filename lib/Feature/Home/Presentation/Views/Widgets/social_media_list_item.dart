import 'package:egycan_app/Core/Utils/Functions/launch_url_social_media.dart';
import 'package:egycan_app/Core/Utils/assets_data.dart';
import 'package:egycan_app/Core/Utils/constant_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SocialMediaListItem extends StatelessWidget
{
  const SocialMediaListItem({super.key, required this.socialMediaIcons, required this.socialMediaTitles, required this.index,});
  final List<String> socialMediaTitles;
  final List<dynamic> socialMediaIcons;
  final int index;

  @override
  Widget build(BuildContext context)
  {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      child: Column(
        children: [
          IconButton(onPressed: () async => launchUrlSocialMedia(url: AssetsData.socialMediaLinks[index]), icon: socialMediaIcons[index]),

          Text(socialMediaTitles[index], style: TextStyle(color: black, fontSize: MediaQuery.sizeOf(context).width <= 500 ? 12.sp : 16.sp)),
        ],
      ),
    );
  }
}