import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:srch_prof/models/user_model.dart';

class UserService {
  final String baseUrl = "https://dummyjson.com";


  Future<List<User>> fetchUsers({int limit = 10 , int skip = 0}) async {
    final response = await http.get(Uri.parse('$baseUrl/users?limit=$limit&skip=$skip'));

    if (response.statusCode == 200){
      final data = json.decode(response.body);
      List userJson = data['users'];
      return userJson.map((user) => User.fromJson(user)).toList();
          }

    else{
      throw Exception("Failed to load users");
    }
  }


  Future<List<User>> searchUsers(String query) async{
    final response = await http.get(Uri.parse('$baseUrl/users/search?q=$query'));

    if(response.statusCode == 200){
      final data = json.decode(response.body);
    List userJson = data['users'];

    return userJson.map((user)=> User.fromJson(user)).toList();
    }
    else{
      throw Exception("Search Failed");
    }

  }

  Future<List<User>> searchForCategory(String category , int userId) async{
    final response = await http.get(Uri.parse('$baseUrl/$category/users/$userId'));

    if (response.statusCode == 200){
      final data = json.decode(response.body);
      List userJson = data['users'];

      return userJson.map((user) => User.fromJson(user)).toList();

    }
    else{
      throw Exception("posts not found");
    }
  }


}