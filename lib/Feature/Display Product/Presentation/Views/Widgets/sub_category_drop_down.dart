import 'package:animate_do/animate_do.dart';
import 'package:egycan_app/Feature/Data/Repositories/Models/product_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icons_plus/icons_plus.dart';
import '../../../../../Core/Utils/constant_colors.dart';
import '../../../../../Core/Utils/styles.dart';

class SubCategoryDropDown extends StatelessWidget
{
  const SubCategoryDropDown({super.key, required this.products, this.onChanged});
  final void Function(String?)? onChanged;
  final List<ProductModel> products;

  @override
  Widget build(BuildContext context)
  {
    List<String> allSubCategories = products.map((element) => element.subCategory).toSet().toList();

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      child: FadeInDownBig(
        child: DropdownButtonFormField<String>(
          borderRadius: BorderRadius.circular(25),
          icon: Icon(AntDesign.down_circle_fill, color: lightBlue, size: 20.h),
          items: List.generate(allSubCategories.length, (index) => DropdownMenuItem(value: allSubCategories[index], child: Text(allSubCategories[index]))),
          decoration: InputDecoration(
            label: Text('Choose a sub-category', style: TextStyle(color: black, fontSize: 15.sp)),
            prefixIcon: Icon(Iconsax.category_2_bold, color: lightBlue, size: 20.h),
            border: Styles.styleOfTextFormField(),
            enabledBorder: Styles.styleOfTextFormField(),
            disabledBorder: Styles.styleOfTextFormField(),
            focusedBorder: Styles.styleOfTextFormField(),
            fillColor: white,
            filled: true,
          ),

          onChanged: onChanged,
        ),
      ),
    );
  }
}
