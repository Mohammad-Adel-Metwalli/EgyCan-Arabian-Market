class ProductModel
{
  String category, subCategory, productName, productPrice;
  List<dynamic> imageUrl;

  ProductModel({required this.productName, required this.productPrice, required this.category, required this.subCategory, required this.imageUrl});
}