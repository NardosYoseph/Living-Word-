
import 'package:living_word/app/models/event/eventModel.dart';
import 'package:living_word/app/models/user/userModel.dart';
import 'package:get/get.dart';
import 'package:living_word/app/services/userService/user_service.dart';

class UserController extends GetxController{
  UserService _userService=UserService();
  User? singleUser ;
Future<User?> fetchUserById(String? id) async{
  singleUser=await _userService.fetchUserById(id);
  print(singleUser);
  return singleUser;
}

Future<List<Event>?> findUserEvents(String? userId) async{
  try{
List<Event>  events =await _userService.findUserEvents(userId);
  print(events);
  return events;
  }catch(error){
    return null;
  }
}
}
