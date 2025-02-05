import 'package:egycan_app/Core/Utils/api_keys.dart';
import 'package:egycan_app/Feature/Data/Repositories/Models/product_model.dart';
import 'package:flutter/foundation.dart';
import 'package:gsheets/gsheets.dart';

Future<(List<List<String>>? allRows, List<String>? categoriesTitles, Map<String, List<ProductModel>> allProducts)> _getAllProductsInIsolate(Map<String, String> args) async
{
  List<List<String>>? allRows = [];
  List<String>? categoriesTitles = [];
  List<ProductModel> allProducts = [];

  try
  {
    // Fetch raw data in the main isolate
    final gSheets = GSheets(args['apiKey']);
    final spreadsheet = await gSheets.spreadsheet(args['spreadsheetId']!);
    categoriesTitles = spreadsheet.sheets.map((element) => element.title).toList();
    Map<String, List<List<String>>?> categoriesAndProducts = {};

  for(String categoryTitle in categoriesTitles)
  {
    final rows = await spreadsheet.worksheetByTitle(categoryTitle)?.values.allRows(fromRow: 2);
    if(rows != null)
    {
      categoriesAndProducts[categoryTitle] = rows;
    }
  }

  for(String categoryTitle in categoriesTitles)
  {
    final rows = categoriesAndProducts[categoryTitle];
    for(int index = 0; index < rows!.length; index++)
    {
      final row = rows[index];

      if(row.length >= 4)
        {
          ProductModel productModel = ProductModel(
            category: categoryTitle,
            subCategory: categoriesAndProducts[categoryTitle]![index][0],
            imageUrl: categoriesAndProducts[categoryTitle]![index][1],
            productName: categoriesAndProducts[categoryTitle]![index][2],
            productPrice: categoriesAndProducts[categoryTitle]![index][3],
          );
          allProducts.add(productModel);
        }

        else
        {

        }
      }
    }

    Map<String, List<ProductModel>> allCategoriesAndProducts = {};
    for (ProductModel product in allProducts)
    {
      allCategoriesAndProducts.putIfAbsent(product.category, () => []);
      allCategoriesAndProducts[product.category]!.add(product);
    }

    return (allRows, categoriesTitles, allCategoriesAndProducts);
  }

  catch (e)
  {
    return ([] as List<List<String>>?, [] as List<String>?, {} as Map<String, List<ProductModel>>);
  }
}

Future<(List<List<String>>? allRows, List<String>? categoriesTitles, Map<String, List<ProductModel>> allproducts)> getAllProducts() async
{
  try
  {
    final result = await compute(
      _getAllProductsInIsolate, {
      'apiKey': ApiKeys.apiKeyCredentials,
      'spreadsheetId': ApiKeys.egyCanSpreadSheetId,
      }
    );

    return result;
  }

  catch(e)
  {
    return ([] as List<List<String>>?, [] as List<String>?, {} as Map<String, List<ProductModel>>);
  }
}