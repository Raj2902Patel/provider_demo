import 'package:http/http.dart' as http;
import 'package:provider_demo/user/model/UserModel.dart';

class UserService {
  Future<List<UserModel>> fetchUserData() async {
    var response = await http.get(
      Uri.parse('https://jsonplaceholder.typicode.com/users'),
    );

    if (response.statusCode == 200) {
      return userModelFromJson(response.body);
    } else {
      throw Exception("NetWork Found Error!");
    }
  }
}
