import 'package:egycan_app/Core/Utils/assets_data.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../../../../Core/Utils/constant_colors.dart';

class SiteImagesDots extends StatefulWidget
{
  const SiteImagesDots({super.key, required this.indexOfSiteImages,});
  final int indexOfSiteImages;

  @override
  State<SiteImagesDots> createState() => _SiteImagesDotsState();
}

class _SiteImagesDotsState extends State<SiteImagesDots>
{
  @override
  Widget build(BuildContext context)
  {
    return AnimatedSmoothIndicator(
      count: AssetsData.imagesOfEgyCan.length,
      activeIndex: widget.indexOfSiteImages,
      effect: const ExpandingDotsEffect(
        dotColor: blue,
        dotHeight: 9,
        dotWidth: 9,
        expansionFactor: 9,
        activeDotColor: pyramidsColor,
      ),
    );
  }
}