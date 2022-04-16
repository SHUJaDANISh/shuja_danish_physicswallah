import 'package:http/http.dart' as http;
import 'package:shuja_danish_physicswallah/app/modules/home/models/physics_wallah_model.dart';

class ApiService{
  static var clint = http.Client();
  
  static Future<List<PhysicsWallah>> fetchUsers() async{
    var response = await clint.get(Uri.parse("https://my-json-server.typicode.com/easygautam/data/users"),);
    if (response.statusCode ==200) {
      // print(response.body[0]);
      var jsonString = response.body;
      return physicsWallahFromJson(jsonString);
    }
    return [];
  }
}