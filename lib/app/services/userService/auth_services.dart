import 'dart:convert';
import 'package:living_word/app/apiHandler/api_handler.dart';
import 'package:living_word/app/models/user/userModel.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
//import 'package:shared_preferences/shared_preferences.dart';
import '../../utils/constants.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class AuthService {

  Future<Object> login(String email, String password) async {
    final storage = FlutterSecureStorage();
    try{
    final response = await ApiHandler().loginAndRegister("/user/login",{"email":email,"password":password});
    final accessToken = response['token']['accessToken'];
    final refreshToken = response['token']['refreshToken'];

    await storage.write(key: 'accessToken', value: accessToken);
    await storage.write(key: 'refreshToken', value: refreshToken);
   // ApiHandler().setAuthorization(accessToken!);
      return response;
    }catch(error){
      return error;
    }
  }

  Future<bool?> register(User user) async {

    final response = await ApiHandler().loginAndRegister("/user/register", user.toJson());
     if (response is bool) {
      return response;
    } else if (response is Map<String, dynamic>) {
      return response['success'] == true;
    }
    return null;
    
  }

 Future<List<User>> fetchUsers() async {
    final response = await ApiHandler().get("/user/allUSers");
    if (response.containsKey('userList')) {
    List<User> users = (response['userList'] as List<dynamic>)
        .map((json) => User.fromJson(json))
        .toList();
    return users;
     } else {
    throw Exception('Failed to fetch users');
  }
  }

   Future<User> fetchUserbyID(String? id) async {
    final response = await ApiHandler().get("/user/allUSers/$id");
    if (response.containsKey('user')) {
    User user = User.fromJson(response);
    return user;
     } else {
    throw Exception('Failed to fetch users');
  }
  }


  Future<void> logout() async {
    // Make a DELETE request to the logout endpoint
    await http.delete(Uri.parse('$eventsApiUrl/logout'));
    // Perform any other necessary tasks for logout
  }

}