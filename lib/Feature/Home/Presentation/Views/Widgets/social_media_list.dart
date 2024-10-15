import 'package:egycan_app/Feature/Home/Presentation/Views/Widgets/social_media_list_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../Core/Utils/assets_data.dart';

class SocialMediaList extends StatelessWidget
{
  const SocialMediaList({super.key,});

  @override
  Widget build(BuildContext context)
  {
    return SizedBox(
      height: 100.h,
      width: double.infinity,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
            AssetsData.socialMedia.length, (index)
            {
              List<String> socialMediaTitles = AssetsData.socialMedia.keys.toList();
              List<dynamic> socialMediaIcons = AssetsData.socialMedia.values.toList();

              return SocialMediaListItem(socialMediaIcons: socialMediaIcons, socialMediaTitles: socialMediaTitles, index: index);
            },
          ),
        ),
      ),
    );
  }
}