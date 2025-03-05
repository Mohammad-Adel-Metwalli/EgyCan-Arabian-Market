import 'package:egycan_app/Feature/Data/Repositories/Models/product_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_device_config/config.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../Core/Utils/assets_data.dart';
import '../../../../../Core/Utils/constant_colors.dart';
import '../../../../Cart/Data/Repositories/Models/cart_model.dart';
import '../../../../Home/Presentation/Manager/FAB Cart Cubit/fab_cart_cubit.dart';
import '../../../../Home/Presentation/Views/Widgets/add_to_cart_button.dart';
import '../../../../Home/Presentation/Views/Widgets/product_image_dialog.dart';
import '../../../../Home/Presentation/Views/Widgets/total_and_quantity_horizontal.dart';
import '../../../../Home/Presentation/Views/Widgets/total_and_quantity_vertical.dart';
import 'custom_images_list_view.dart';

class ViewProductViewBody extends StatefulWidget
{
  const ViewProductViewBody({super.key, required this.productModel,});
  final ProductModel productModel;

  @override
  State<ViewProductViewBody> createState() => _ViewProductViewBodyState();
}

class _ViewProductViewBodyState extends State<ViewProductViewBody>
{
  @override
  Widget build(BuildContext context)
  {
    return Center(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 20.h),

            widget.productModel.imageUrl.length == 1 ? ProductImageDialog(imageUrl: widget.productModel.imageUrl[0]) : SizedBox(
              height: 150.h,
              width: double.infinity,
              child: CustomImagesListView(productModel: widget.productModel),
            ),

            SizedBox(height: MediaQuery.sizeOf(context).height * 0.02),

            Text(widget.productModel.productName, style: TextStyle(color: black, fontWeight: FontWeight.w600, fontSize: 16.sp), textAlign: TextAlign.center),

            Text('\$ ${widget.productModel.productPrice}', style: TextStyle(color: green, fontWeight: FontWeight.w700, fontSize: 18.sp), textAlign: TextAlign.center),

            SizedBox(height: MediaQuery.sizeOf(context).height * 0.05),

            context.deviceType.name == 'Mobile' ? TotalAndQuantityVertical(productModel: widget.productModel) : TotalAndQuantityHorizontal(productModel: widget.productModel),

            BlocConsumer<FabCartCubit, FabCartState>(
              listener: (context, state)
              {
                if(state is FabCartSuccess)
                {
                  Navigator.pop(context);
                }
              },

              builder: (context, state)
              {
                return AddToCartButton(
                  productModel: widget.productModel,
                  onPressed: ()
                  {
                    CartModel cartModel = CartModel(productModel: widget.productModel, total: double.parse(widget.productModel.productPrice) * AssetsData.quantity, quantity: AssetsData.quantity);
                    BlocProvider.of<FabCartCubit>(context).addToCart(cartModel: cartModel);
                    setState(() => AssetsData.quantity = 0);
                  },
                );
              },
            ),

            SizedBox(height: MediaQuery.sizeOf(context).height * 0.02),
          ],
        ),
      ),
    );
  }
}