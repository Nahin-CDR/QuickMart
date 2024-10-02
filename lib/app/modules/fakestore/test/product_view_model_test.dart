import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:quick_mart/app/modules/fakestore/services/api_service.dart';
import '../model/product_model.dart';
import '../view_model/product_view_model.dart';

class MockApiService extends Mock implements FakeStoreApiService {}

void main() {
  test('ProductViewModel fetches products successfully', () async {
    final mockApiService = MockApiService();
    final viewModel = ProductViewModel();

    when(mockApiService.fetchProducts()).thenAnswer(
          (_) async => [Product(id: 1, title: 'Test', description: 'Test', price: 10.0, image: 'image')],
    );

    await viewModel.fetchProducts();
    expect(viewModel.products.isNotEmpty, true);
  });
}
