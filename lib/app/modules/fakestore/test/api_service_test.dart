import 'package:flutter_test/flutter_test.dart';
import 'package:quick_mart/app/modules/fakestore/services/api_service.dart';


void main() {
  test('Fetch products returns a non-empty list', () async {
    final apiService = FakeStoreApiService();
    final products = await apiService.fetchProducts();
    expect(products.isNotEmpty, true);
    print(products[0].title);
  });
}
