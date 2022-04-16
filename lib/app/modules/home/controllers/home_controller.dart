import 'package:get/get.dart';
import 'package:shuja_danish_physicswallah/app/data/api_module.dart';
import 'package:shuja_danish_physicswallah/app/modules/home/models/physics_wallah_model.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController

  var isLoading = true.obs;

  List<PhysicsWallah> users = [];

  final count = 0.obs;
  @override
  void onInit()async {
    isLoading.value = true;
     users = await ApiService.fetchUsers();
     isLoading.value = false;

    super.onInit();

  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;
}
