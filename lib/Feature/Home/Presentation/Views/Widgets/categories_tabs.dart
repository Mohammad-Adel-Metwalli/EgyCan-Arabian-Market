import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../Core/Utils/constant_colors.dart';

class CategoriesTabs extends StatelessWidget
{
  const CategoriesTabs({super.key, required this.tabController, required this.allCategories,});
  final TabController tabController;
  final List<String> allCategories;

  @override
  Widget build(BuildContext context)
  {
    return TabBar(
      labelColor: black,
      isScrollable: true,
      indicatorWeight: 5,
      indicatorColor: blue,
      controller: tabController,
      unselectedLabelColor: grey,
      overlayColor: const WidgetStatePropertyAll(Colors.transparent),
      tabs: List.generate(allCategories.length, (categoryIndex) => Text(allCategories[categoryIndex], style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18.sp))),
    );
  }
}