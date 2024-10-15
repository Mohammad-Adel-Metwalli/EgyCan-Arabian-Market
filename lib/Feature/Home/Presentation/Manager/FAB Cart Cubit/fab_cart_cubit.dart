import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import '../../../../Cart/Data/Repositories/Models/cart_model.dart';
part 'fab_cart_state.dart';

class FabCartCubit extends Cubit<FabCartState>
{
  FabCartCubit() : super(FabCartInitial());
  List<CartModel> allCartProducts = [];

  addToCart({required CartModel cartModel})
  {
    allCartProducts.add(cartModel);
    emit(FabCartSuccess(allCartProducts: allCartProducts));
  }

  removeFromCart({required int index})
  {
    allCartProducts.removeAt(index);
    emit(FabCartSuccess(allCartProducts: allCartProducts));
  }

  fetchAllCartProducts()
  {
    emit(FabCartSuccess(allCartProducts: allCartProducts));
  }

  clearAllCartProducts()
  {
    allCartProducts = [];
    emit(FabCartSuccess(allCartProducts: allCartProducts));
  }
}