import 'package:cloud_firestore/cloud_firestore.dart';

Future<List<List<QueryDocumentSnapshot>>> fetchAllProductsFromFirebase() async
{
  FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;

  var categoriesCollection = firebaseFirestore.collection('categories').get();
  var productsCollection = firebaseFirestore.collection('products').get();

  // Wait for both to complete
  var results = await Future.wait([categoriesCollection, productsCollection]);

  return results.map((snapshot) => snapshot.docs).toList();
}