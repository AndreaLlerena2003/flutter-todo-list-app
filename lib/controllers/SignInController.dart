import 'package:get/get.dart';
import '../model/UserModel.dart';
class SignInController extends GetxController {
  // User information
  var user = UserModel().obs;
  // Status message
  var statusMessage = ''.obs;

  // Method to update user name
  void updateUserName(String name) {
    user.update((user) {
      user?.name = name;
    });
  }

  // Method to update user password
  void updateUserPassword(String password) {
    user.update((user) {
      user?.password = password;
    });
  }

  // Method to sign in the user
  Future<void> signIn() async {
    final String name = user.value.name ?? '';
    final String password = user.value.password ?? '';

    if (name.isNotEmpty && password.isNotEmpty) {
      // Hardcoded data for validation
      const hardcodedName = 'testUser';
      const hardcodedPassword = '123456';

      if (name == hardcodedName && password == hardcodedPassword) {
        statusMessage.value = 'Sign-in successful';
      } else {
        statusMessage.value = 'Invalid name or password';
      }
    } else {
      statusMessage.value = 'Please enter both name and password';
    }
  }
}
