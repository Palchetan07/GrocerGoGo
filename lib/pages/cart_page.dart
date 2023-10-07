import 'package:flutter/material.dart';
import 'package:grocerystoreapp/models/cart_model.dart';
import 'package:provider/provider.dart';

class MyCartPage extends StatefulWidget {
  const MyCartPage({Key? key}) : super(key: key);

  @override
  State<MyCartPage> createState() => _MyCartPageState();
}

class _MyCartPageState extends State<MyCartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('CART'),
        ),
        body: Consumer<CartModel>(
          builder: (context, value, child) {
            return Column(
              children: [
                Expanded(child: ListView.builder(
                    itemCount:value.cartItem.length,
                    itemBuilder: (context, index) {
                  return Container(decoration: BoxDecoration(color: Colors.grey),
                    child: ListTile(

                      title: Text(value.cartItem[index][0]),

                      leading: Image.asset(value.cartItem[index][2]),
                    ),
                  );
                }))
              ],
            );
          },
        ));
  }
}
