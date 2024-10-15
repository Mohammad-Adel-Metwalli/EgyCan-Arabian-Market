import 'package:egycan_app/Feature/Cart/Presentation/Views/Widgets/custom_divider.dart';
import 'package:egycan_app/Feature/Cart/Presentation/Views/Widgets/custom_text_form_field.dart';
import 'package:egycan_app/Feature/Cart/Presentation/Views/Widgets/location_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../Core/Utils/constant_colors.dart';
import '../../../../../Core/Utils/singleton_shared_preferences.dart';
import '../../../Data/Repositories/Models/cart_model.dart';
import 'continue_button.dart';

class CartBottomSheetBody extends StatefulWidget
{
  const CartBottomSheetBody({super.key, required this.allCartProducts,});
  final List<CartModel> allCartProducts;

  @override
  State<CartBottomSheetBody> createState() => _CartBottomSheetBodyState();
}

class _CartBottomSheetBodyState extends State<CartBottomSheetBody>
{
  @override
  Widget build(BuildContext context)
  {
    return Center(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: MediaQuery.sizeOf(context).height * 0.02),

            const Center(child: CustomDivider()),

            SizedBox(height: MediaQuery.sizeOf(context).height * 0.02),

            Center(child: Text('Invoice Payment', style: TextStyle(color: pyramidsColor, fontWeight: FontWeight.w700, fontSize: 25.sp))),

            SizedBox(height: MediaQuery.sizeOf(context).height * 0.02),

            Padding(
              padding: EdgeInsets.only(left: 30.w),
              child: Text('Location', style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20.sp)),
            ),

            const LocationList(),

            CustomTextFormField(onChanged: (data) async => await SingletonSharedPreferences.instance.setString('username', data)),

            SizedBox(height: MediaQuery.sizeOf(context).height * 0.02),

            ContinueButton(allCartProducts: widget.allCartProducts),
          ],
        ),
      ),
    );
  }
}