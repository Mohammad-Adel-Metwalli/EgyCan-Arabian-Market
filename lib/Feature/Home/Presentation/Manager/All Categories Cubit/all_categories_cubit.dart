import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
part 'all_categories_state.dart';

class AllCategoriesCubit extends Cubit<AllCategoriesState>
{
  AllCategoriesCubit() : super(AllCategoriesInitial());
  CollectionReference categories = FirebaseFirestore.instance.collection('categories');

  fetchAllCategories() async
  {
    List<dynamic> categoryValues = [];
    List<String> categoryKeys = [];

    categories.snapshots().listen((event) async
    {
      for(var category in event.docs)
      {
        Map<String, dynamic> categoryData = category.data() as Map<String, dynamic>;
        categoryValues = categoryData.values.toList();
        categoryKeys = categoryData.keys.toList();
      }

      if(!isClosed)
      {
        emit(AllCategoriesSuccess(categoryKeys: categoryKeys, categoryValues: categoryValues));
      }
    });
  }
}