import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../view_model/product_view_model.dart';


class ProductListView extends StatelessWidget {
  const ProductListView({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = Provider.of<ProductViewModel>(context, listen: false);

    // Use Future.microtask to call fetchProducts when widget is first built
     if(viewModel.products.isEmpty){
       Future.microtask(() => viewModel.fetchProducts());
     }


    return Scaffold(
      appBar: AppBar(title: const Text('E-Commerce App')),
      body: Consumer<ProductViewModel>(
        builder: (context, viewModel, child) {
          return viewModel.isLoading ?
          const Center(child: CircularProgressIndicator()) :
          ListView.builder(
            itemCount: viewModel.products.length,
            itemBuilder: (context, index) {
              final product = viewModel.products[index];
              return ListTile(
                leading: Image.network(product.image, width: 50, height: 50),
                title: Text(product.title),
                subtitle: Text('\$${product.price}'),
              );
            },
          );
        },
      ),
    );
  }
}
