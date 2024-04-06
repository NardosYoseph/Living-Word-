import 'dart:convert';
import 'dart:io';
import 'package:dio/dio.dart';
import 'package:living_word/app/apiHandler/http_interceptor.dart';
import 'package:living_word/app/apiHandler/token_manager.dart';
import 'package:living_word/app/utils/constants.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:http_interceptor/http/intercepted_client.dart';


class ApiHandler {
  static final ApiHandler _instance = ApiHandler._internal();

  factory ApiHandler() {
    return _instance;
  }

  ApiHandler._internal() {
    _baseUrl = eventsApiUrl;
  }
final client = InterceptedClient.build(
  interceptors: [RefreshTokenInterceptor(TokenManager())],
);
 late String _baseUrl;
 Map<String, String> _authorizationHeader={};
  Future<dynamic> get(String endpoint,{Map<String, String>? headers}) async {
    headers = _authorizationHeader;
    headers.addAll(headers ?? {'Content-Type': 'application/json'});
    final response = await client.get(Uri.parse('$_baseUrl$endpoint'),headers: headers,);
    return _handleResponse(response);
  }


  Future<dynamic> post(String endpoint, dynamic data, {Map<String, String>? headers}) async {
    print("$data");
     if (_authorizationHeader.isEmpty) {
    headers = headers ?? {'Content-Type': 'application/json'};
  } else {
    headers = _authorizationHeader;
    headers.addAll(headers);
    headers.addAll({'Content-Type': 'application/json'});
  }
    final response = await client.post(
      Uri.parse('$_baseUrl$endpoint'),
     headers: headers,
      body: jsonEncode(data),
    );
    return _handleResponse(response);
  }
  Future<dynamic> loginAndRegister(String endpoint, dynamic data, {Map<String, String>? headers}) async {
    print("$data");
     if (_authorizationHeader.isEmpty) {
    headers = headers ?? {'Content-Type': 'application/json'};
  } else {
    headers = _authorizationHeader;
    headers.addAll(headers);
    headers.addAll({'Content-Type': 'application/json'});
  }
    final response = await http.post(
      Uri.parse('$_baseUrl$endpoint'),
     headers: headers,
      body: jsonEncode(data),
    );
    return _handleResponse(response);
  }

  Future<dynamic> pay(String endpoint, dynamic data, {Map<String, String>? headers}) async {
    print("$data");
     if (_authorizationHeader.isEmpty) {
    headers = headers ?? {'Content-Type': 'application/json'};
  } else {
    headers = _authorizationHeader;
    headers.addAll(headers);
    headers.addAll({'Content-Type': 'application/json'});


  }
    final response = await http.post(
      Uri.parse(endpoint),
     headers: headers,
      body: jsonEncode(data),
    );
    return _handleResponse(response);
  }
  
 Map<String, String> setAuthorization(String token) {
   return _authorizationHeader = {'Authorization': 'Bearer $token'};
  }

  Future<dynamic> put(String endpoint, dynamic data) async {
    final response = await client.put(
      Uri.parse('$_baseUrl$endpoint'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode(data),
    );
    return _handleResponse(response);
  }
   Future<dynamic> search(String endpoint, dynamic data) async {
    print(data);
    final response = await client.get(
      Uri.parse('$_baseUrl$endpoint').replace(queryParameters: {'q': data}),
      headers: {'Content-Type': 'application/json'},
    );
    return _handleResponse(response);
  }

  Future<dynamic> delete(String endpoint) async {
    final response = await http.delete(Uri.parse('$_baseUrl$endpoint'));
    return _handleResponse(response);
  }

  dynamic _handleResponse(dynamic response) async {
  if (response is StreamedResponse) {
    final decodedBody = await response.stream.bytesToString();
    if (response.statusCode == 200) {
      return jsonDecode(decodedBody);
    } else {
      throw Exception('Failed to load data: $decodedBody');
    }
  } else if (response is http.Response) {
    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception('Failed to load data: ${response.body}');
    }
  } else {
    throw ArgumentError('Invalid response type: ${response.runtimeType}');
  }
}
}
