import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../Core/Utils/Functions/create_pdf_function.dart';
import '../../../../../Core/Utils/constant_colors.dart';
import '../../../../../Core/Utils/singleton_shared_preferences.dart';
import '../../../Data/Repositories/Models/cart_model.dart';

class ContinueButton extends StatefulWidget
{
  const ContinueButton({super.key, required this.allCartProducts,});
  final List<CartModel> allCartProducts;

  @override
  State<ContinueButton> createState() => _ContinueButtonState();
}

class _ContinueButtonState extends State<ContinueButton>
{
  void popOut() => Navigator.pop(context);

  @override
  Widget build(BuildContext context)
  {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      child: MaterialButton(
        color: green,
        height: 65.h,
        minWidth: double.infinity,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
        child: Center(child: Text('Continue', style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20.sp, color: white))),
        onPressed: () async
        {
          String? username = SingletonSharedPreferences.instance.getString('username');
          String? location = SingletonSharedPreferences.instance.getString('location');
          await createPdfFunction(allCartProducts: widget.allCartProducts, context: context, username: username!, location: location!);
          popOut();
        },
      ),
    );
  }
}