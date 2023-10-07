import 'package:flutter/material.dart';
import 'package:grocerystoreapp/models/cart_model.dart';
import 'package:provider/provider.dart';

class GroceryItemTile extends StatelessWidget {
  // ItemPrice
  //Item name
  //Image Path
//color
  final String itemName;
  final String itemPrice;
  final String imgPath;
  final  color;
  void Function()? onPressed; //call back function

  GroceryItemTile(
      {super.key,
      required this.itemName,
      required this.itemPrice,
      required this.imgPath,
      this.color,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
            color: color[100], borderRadius: BorderRadius.circular(12)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            //Image

            Image.asset(
              imgPath,
              height: 64,
            ),
            Text(itemName),
            MaterialButton(
              onPressed: onPressed,
              color: color[500],
              padding: const EdgeInsets.all(8.0),
              child: Text(
                '\$$itemPrice',
                style: const TextStyle(
                    color: Colors.white, fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
    );
  }
}
