import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart';
import 'package:loggy/loggy.dart';
import 'package:myapp/data/exceptions/api_exception.dart';
import 'package:myapp/data/exceptions/response_validation_exception.dart';
import 'package:myapp/data/exceptions/validation_error.dart';
import 'package:myapp/data/sources/remote/products_api/model/product.dart';
import 'package:myapp/data/sources/remote/products_api/validators/product.dart';
import 'package:myapp/domain/contracts/i_clients/i_product_api_client.dart';

class ProductApiClient implements IProductApiClient {
  ProductApiClient({
    required this.client,
  });

  final Client client;

  @override
  Future<Product> getProductById(int id) async {
    final products = await getAllProducts();

    return products.firstWhere((element) => element.id == id);
  }

  @override
  Future<List<Product>> getAllProducts() async {
    final url = Uri.parse('https://fakestoreapi.com/products');

    final response = await client.get(
      url,
    );

    if (response.statusCode != HttpStatus.ok) {
      final logMessage =
          'Get products request failed with status code: ${response.statusCode}';

      _handleApiException(
        response.statusCode,
        response.body,
        logMessage,
      );
    }
    final decodedJson = json.decode(response.body);
    final products = <Product>[];
    final validationErrors = <ValidationError<Product>>[];

    for (final decodedProduct in decodedJson) {
      final product = Product.fromJson(decodedProduct);

      products.add(product);
      validationErrors.addAll(product.validate());
    }

    if (validationErrors.isNotEmpty) {
      final exception = ResponseValidationException<Product>(
        details:
            'One or more validation errors occurred while calling getAllProducts',
      );

      exception.errors.addAll(validationErrors);

      throw exception;
    }

    return products;
  }

  void _handleApiException(
    int statusCode,
    String responseBody,
    String logMessage,
  ) {
    final serverErrorMessage = json.decode(responseBody)['error_message'];

    final apiException = ApiException(
      message: logMessage,
      statusCode: statusCode,
      serverErrorMessage: serverErrorMessage,
    );

    logError(
      logMessage,
      apiException.toString(),
      StackTrace.current,
    );

    throw apiException;
  }
}
