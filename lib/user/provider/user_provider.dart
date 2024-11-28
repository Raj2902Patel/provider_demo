import 'package:flutter/cupertino.dart';
import 'package:provider_demo/user/model/UserModel.dart';
import 'package:provider_demo/user/service/user_service.dart';

class UserProvider extends ChangeNotifier {
  bool _isLoading = true;
  final List<UserModel> _userList = [];

  bool get isLoading => _isLoading;
  List<UserModel> get userList => _userList;

  fetchUsers() async {
    try {
      _isLoading = true;
      var userData = await UserService().fetchUserData();
      _userList.addAll(userData);
      print(userData);
    } catch (error) {
      print("Error!");
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }
}
