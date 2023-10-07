import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  final List _shopItems = [
    //[itemName , itemPrice , imgUrl, color]
    ['Avacodo', '3.0', 'lib/images/avocado.png', Colors.green],
    ['Banana', '2.0', 'lib/images/banana.png', Colors.yellow],
    ['Chicken', '4.0', 'lib/images/chicken.png', Colors.red],
    ['Water', '1.0', 'lib/images/water.png', Colors.lightBlue],
    ['Avacodo', '4.0', 'lib/images/avocado.png', Colors.green],
  ];

  final List _cartItems = [];

  get shopItem => _shopItems;

  get cartItem => _cartItems;

// add the items to cart

  void addItems(int index) {
    _cartItems.add(_shopItems[index]);
    notifyListeners();
  }

//delete items from the cart

  void removeItems(int index) {
    _cartItems.removeAt(index);
    notifyListeners();
  }

//Calculate the total price of Cart

String CalculateTotalPrice(){
    double totalPrice=0;
    for(int i=0;i<= _cartItems.length;i++ ){
      totalPrice+= double.parse(shopItem[i][1]);

    }
    return totalPrice.toStringAsFixed(2);


}
}
