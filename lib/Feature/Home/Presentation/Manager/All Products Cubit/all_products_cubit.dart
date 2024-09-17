import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import '../../../../Data/Repositories/Models/product_model.dart';
part 'all_products_state.dart';

class AllProductsCubit extends Cubit<AllProductsState>
{
  AllProductsCubit() : super(AllProductsInitial());
  CollectionReference products = FirebaseFirestore.instance.collection('products');

  fetchAllProducts() async
  {
    List<ProductModel> allProducts = [];

    products.snapshots().listen((event) async
    {
      for(var product in event.docs)
      {
        allProducts.add(ProductModel(
          productName: product['productName'],
          productPrice: double.parse(product['productPrice'].toString()),
          category: product['category'],
          subCategory: product['subCategory'],
          imagesUrls: product['imagesUrls'],
        ));
      }

      if(!isClosed)
      {
        emit(AllProductsSuccess(allProducts: allProducts));
      }
    });
  }
}
