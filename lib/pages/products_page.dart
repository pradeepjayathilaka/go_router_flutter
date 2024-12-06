import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:gorouter/data/products.dart';
import 'package:gorouter/models/product_model.dart';
import 'package:gorouter/router/routes_name.dart';

class ProductsPage extends StatelessWidget {
  const ProductsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final productList = ProductData().productsList;
    return Scaffold(
      appBar: AppBar(
        title: Text("All Products"),
      ),
      body: ListView.builder(
        itemCount: productList.length,
        itemBuilder: (context, index) {
          final Product product = productList[index];
          return Container(
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(10),
            ),
            child: GestureDetector(
              onTap: () {
                GoRouter.of(context).pushNamed(
                  RouteNameClass.singleProduct,
                  extra: product,
                );
              },
              child: ListTile(
                contentPadding: EdgeInsets.all(10),
                title: Text(product.title),
                trailing: Text(product.price.toString()),
                leading: Image.network(
                  product.imageUrl,
                  width: 100,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
