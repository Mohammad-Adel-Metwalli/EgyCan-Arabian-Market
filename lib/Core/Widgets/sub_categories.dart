import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../Utils/constant_colors.dart';
import '../Utils/styles.dart';

class SubCategories extends StatelessWidget
{
  const SubCategories({super.key, required this.subCategory, required this.icon,});
  final List<dynamic> subCategory;
  final Widget icon;

  @override
  Widget build(BuildContext context)
  {
    return SizedBox(
      width: 300.w,
      child: DropdownButtonFormField(
        icon: const Icon(CupertinoIcons.chevron_down_circle, color: pyramidsColor),
        decoration: InputDecoration(
          label: const Text('Choose a category', style: TextStyle(color: black)),
          filled: true,
          fillColor: white,
          prefixIcon: icon,
          border: Styles.decorationOfDropMenu(),
          enabledBorder: Styles.decorationOfDropMenu(),
          focusedBorder: Styles.decorationOfDropMenu(),
          disabledBorder: Styles.decorationOfDropMenu(),
        ),

        items: List<DropdownMenuItem<int>>.generate(
          subCategory.length,
              (index) => DropdownMenuItem<int>(
            value: index,
            child: Text(subCategory[index]),
          ),
        ),
        onChanged: (data){},
      ),
    );
  }
}