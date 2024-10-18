import 'package:egycan_app/Core/Utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../Core/Utils/Functions/create_pdf_function.dart';
import '../../../../../Core/Utils/constant_colors.dart';
import '../../../../../Core/Utils/singleton_shared_preferences.dart';
import '../../../Data/Repositories/Models/cart_model.dart';
import 'cart_bottom_sheet.dart';
import 'checkout_button_body.dart';

class CheckoutButton extends StatefulWidget
{
  const CheckoutButton({super.key, required this.allCartProducts,});
  final List<CartModel> allCartProducts;

  @override
  State<CheckoutButton> createState() => _CheckoutButtonState();
}

class _CheckoutButtonState extends State<CheckoutButton>
{
  @override
  Widget build(BuildContext context)
  {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 5.h),
      child: MaterialButton(
        height: 65.h,
        color: pyramidsColor,
        minWidth: double.infinity,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
        child: const CheckoutButtonBody(),
        onPressed: () async
        {
          String? username = SingletonSharedPreferences.instance.getString('username');
          String? location = SingletonSharedPreferences.instance.getString('location');

          if(username == null && location == null)
          {
            showModalBottomSheet(
              context: context,
              backgroundColor: white,
              shape: RoundedRectangleBorder(borderRadius: Styles.roundedCornersOfBottomSheet),
              builder: (context) => Padding(
                padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
                child: CartBottomSheet(allCartProducts: widget.allCartProducts),
              ),
            );
          }

          else
          {
            await createPdfAndShareItFunction(allCartProducts: widget.allCartProducts, context: context, username: username!, location: location!);
          }
        },
      ),
    );
  }
}