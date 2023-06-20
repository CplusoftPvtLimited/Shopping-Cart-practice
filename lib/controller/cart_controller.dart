import 'package:flutter/foundation.dart';

import '../model/cart_model.dart';

class CartController with ChangeNotifier {
  List<Product> _products = [];

  List<Product> get products {
    return [..._products];
  }

  void addToCart(Product product) {
    if (!_products.any((element) => element.title == product.title)) {
      _products.add(product);
    }

    notifyListeners();
  }


  void removeFromCart(int index){
    _products.remove(index);
    notifyListeners();
  }

  void addQty(int index) {
    _products[index].qty += 1;
    notifyListeners();
  }

  void removeQty(int index) {
    if(_products[index].qty <=1){
      _products.remove(products);
    }else{
      _products[index].qty -= 1;
    }
    
    notifyListeners();
  }

  double get totalPrice {
    double total = 0;

    _products.forEach((element) {
      total += int.parse(element.price) * element.qty;
    });

    return total;
  }
}