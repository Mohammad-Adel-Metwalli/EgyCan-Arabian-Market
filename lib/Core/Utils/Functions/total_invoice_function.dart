import '../../../Feature/Cart/Data/Repositories/Models/cart_model.dart';

double totalInvoiceFunction({required List<CartModel> allCartProducts})
{
  double total = 0;
  for(int i = 0; i < allCartProducts.length; i++)
  {
    total += allCartProducts[i].quantity * allCartProducts[i].productModel.productPrice;
  }

  return total;
}