import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocerystoreapp/components/Grocery_tile.dart';
import 'package:grocerystoreapp/models/cart_model.dart';
import 'package:provider/provider.dart';

import 'cart_page.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  final String message =
      DateTime.now().hour < 12 ? "Good morning," : "Good afternoon , ";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) {
                return const MyCartPage();
              }),
            );
          },
          backgroundColor: Colors.green[500],
          child: const Icon(Icons.add_shopping_cart_outlined)),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                message,
                style: GoogleFonts.notoSerif(fontSize: 20),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Text(
                'Lets Order fresh items for you!',
                style: GoogleFonts.notoSerif(
                    fontSize: 40, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.0),
              child: Divider(
                height: 10,
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.0),
              child: Text(
                'Fresh Items list',
                style: TextStyle(fontSize: 16),
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            Expanded(
                child: Consumer<CartModel>(builder: (context, value, child) {
              return GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, childAspectRatio: 1 / 1.2),
                  itemCount: value.shopItem.length,
                  itemBuilder: (context, index) {
                    return GroceryItemTile(
                      itemName: value.shopItem[index][0],
                      itemPrice: value.shopItem[index][1],
                      imgPath: value.shopItem[index][2],
                      color: value.shopItem[index][3],
                      onPressed: () {
                        Provider.of<CartModel>(context, listen: false)
                            .addItems(index);
                      },
                    );
                  });
            }))
          ],
        ),
      ),
    );
  }
}
