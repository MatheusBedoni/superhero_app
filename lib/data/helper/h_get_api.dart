import 'dart:io';
import 'package:superhero_app/data/exceptions/api_client_exceptions.dart';
import 'package:superhero_app/data/model/m_api_response.dart';
import 'package:http/http.dart' as http;


mixin  ApiGetHelper{
  Future<http.Response> get(String endpoint,String _baseAddress) async {
    try {
      final response = await http.get(Uri.parse( '$_baseAddress$endpoint')
       ,
        headers: {
          HttpHeaders.acceptHeader: 'application/json',
        },
      );

      return ApiResponse.returnResponseOrThrowException(response);
    } on IOException catch (e) {
      print(e.toString());
      throw NetworkException();
    }
  }

}
