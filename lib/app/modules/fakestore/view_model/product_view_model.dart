import 'package:flutter/foundation.dart';
import 'package:quick_mart/app/modules/fakestore/services/api_service.dart';
import '../model/product_model.dart';

class ProductViewModel extends ChangeNotifier {
  final FakeStoreApiService _apiService = FakeStoreApiService();

  List<Product> _products = [];
  bool _isLoading = false;

  List<Product> get products => _products;
  bool get isLoading => _isLoading;

  Future<void> fetchProducts() async {
    _isLoading = true;
    notifyListeners();

    try {
      _products = await _apiService.fetchProducts();
    } catch (e) {
      // Handle errors
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }
}
