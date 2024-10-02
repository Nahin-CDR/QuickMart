import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quick_mart/app/modules/fakestore/view/product_list_view.dart';
import 'package:quick_mart/app/modules/fakestore/view_model/product_view_model.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => ProductViewModel(),
        ),
      ],
      child: const MaterialApp(
        title: 'QuickMart',
        home: ProductListView(),
      ),
    );
  }
}
