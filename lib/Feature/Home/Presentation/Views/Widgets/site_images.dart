import 'package:carousel_slider/carousel_slider.dart';
import 'package:egycan_app/Core/Utils/assets_data.dart';
import 'package:egycan_app/Feature/Home/Presentation/Views/Widgets/site_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SiteImages extends StatelessWidget
{
  const SiteImages({super.key, this.onPageChanged,});
  final dynamic Function(int, CarouselPageChangedReason)? onPageChanged;

  @override
  Widget build(BuildContext context)
  {
    return SizedBox(
      height: MediaQuery.sizeOf(context).width <= 500 ? 200.h : 400.h,
      width: double.infinity,
      child: CarouselSlider.builder(
        itemCount: AssetsData.imagesOfEgyCan.length,
        itemBuilder: (context, index, _) => SiteImage(image: AssetsData.imagesOfEgyCan[index]),

        options: CarouselOptions(
          initialPage: 0,
          enlargeFactor: MediaQuery.sizeOf(context).width <= 500 ? 0.35 : 0.4,
          viewportFraction: MediaQuery.sizeOf(context).width <= 500 ? 0.82 : (MediaQuery.sizeOf(context).width <= 995 ? 0.6 : 0.5),
          enlargeCenterPage: true,
          enableInfiniteScroll: true,
          onPageChanged: onPageChanged,
        ),
      ),
    );
  }
}