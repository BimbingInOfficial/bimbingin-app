import 'package:get/get.dart';

class AuthController extends GetxController {
  //TODO: Implement AuthController

  final count = 0.obs;

  void increment() => count.value++;

  void onRoleSelected(String role) {
    // Implement your logic for role selection here
    print('Role selected: $role');
  }
}
