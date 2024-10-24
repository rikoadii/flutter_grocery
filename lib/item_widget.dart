import 'package:belajar_grocery_app/models/product.dart';
import 'package:flutter/material.dart';
import 'package:belajar_grocery_app/product_detail.dart';

class ItemWidget extends StatelessWidget {
  const ItemWidget({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ProductDetail(product: product),
          ),
        );
      },
      child: Card(
        elevation: 2.0,
        shadowColor: Colors.green,
        color: Colors.white,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Hero(
              tag: product.images[0],
              child: SizedBox(
                width: 150.0,
                child: Image.network(product.images[0]),
              ),
            ),
            const SizedBox(height: 6.0),
            Text(
              'USD ${product.price}',
              style: const TextStyle(
                color: Colors.green,
                fontWeight: FontWeight.w600,
                fontSize: 20,
              ),
            ),
            const SizedBox(height: 2),
            Expanded(
              child: Text(
                product.title,
                style: const TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 20.0,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 2),
            const Divider(
              height: 2.0,
              color: Colors.grey,
            ),
            const SizedBox(height: 10),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.add_shopping_cart,
                      size: 20.0,
                      color: Colors.green,
                    ),
                    SizedBox(width: 2),
                    Text(
                      "Beli",
                      style: TextStyle(color: Colors.green, fontSize: 16.0),
                    ),
                  ],
                ),
                SizedBox(width: 8.0),
                Row(
                  children: [
                    Icon(
                      Icons.remove_circle_outline,
                      size: 18.0,
                      color: Colors.green,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 5.0),
                      child: Text("0"),
                    ),
                    Icon(
                      Icons.add_circle_outline,
                      size: 18.0,
                      color: Colors.green,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
