class ProductModel
{
  String productName;
  double productPrice;
  String category;
  String subCategory;
  List<dynamic> imagesUrls;

  ProductModel({required this.productName, required this.productPrice, required this.category, required this.subCategory, required this.imagesUrls});
}