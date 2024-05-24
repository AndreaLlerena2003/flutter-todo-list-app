import 'package:flutter/material.dart';
import '../controllers/SignInController.dart';
import 'package:get/get.dart';

class LoginPage extends StatelessWidget {
  final TextEditingController _namecontroller = TextEditingController();
  final TextEditingController _passwordcontroller = TextEditingController();
  final SignInController signInController = Get.put(SignInController());

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.all(24),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _header(context),
                SizedBox(
                  width: 100, // Establece el ancho deseado
                  height: 100, // Establece la altura deseada
                  child: Image.asset('assets/images/Imagen2.png'),
                ),
                _inputField(context),
                _forgotPassword(context),
                _signup(context),
                Obx(() => Text(
                      signInController.statusMessage.value,
                      style: TextStyle(
                        color: signInController.statusMessage.value == 'Sign-in successful'
                            ? Colors.green
                            : Colors.red,
                      ),
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _header(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 100.0),
      child: Column(
        children: [
          const Text(
            "Welcome Back",
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.w300,
              color: Colors.grey,
              shadows: [
                Shadow(
                  offset: Offset(2.0, 2.0),
                  blurRadius: 3.0,
                  color: Color.fromARGB(64, 0, 0, 0),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10), // Añadir un pequeño espacio entre los textos
          const Text(
            "Enter your credentials to login",
            style: TextStyle(
              fontSize: 16,
              color: Colors.purple,
              fontWeight: FontWeight.w400,
              letterSpacing: 1.0,
            ),
          ),
          const SizedBox(height: 5),
          Divider(
            color: Colors.purple.withOpacity(0.5),
            thickness: 1.0,
            indent: 50,
            endIndent: 50,
          ),
        ],
      ),
    );
  }

  Widget _inputField(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          TextField(
            controller: _namecontroller,
            decoration: InputDecoration(
              hintText: "Username",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(18),
                borderSide: BorderSide.none,
              ),
              fillColor: Colors.purple.withOpacity(0.1),
              filled: true,
              prefixIcon: const Icon(Icons.person),
            ),
          ),
          const SizedBox(height: 10),
          TextField(
            controller: _passwordcontroller,
            decoration: InputDecoration(
              hintText: "Password",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(18),
                borderSide: BorderSide.none,
              ),
              fillColor: Colors.purple.withOpacity(0.1),
              filled: true,
              prefixIcon: const Icon(Icons.lock),
            ),
            obscureText: true,
          ),
          const SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {
              if (_namecontroller.text.isNotEmpty && _passwordcontroller.text.isNotEmpty) {
                signInController.updateUserName(_namecontroller.text);
                signInController.updateUserPassword(_passwordcontroller.text);
                signInController.signIn();
              } else {
                Get.snackbar('Error', 'Please fill in all fields');
              }
            },
            style: ElevatedButton.styleFrom(
              shape: const StadiumBorder(),
              padding: const EdgeInsets.symmetric(vertical: 16),
              backgroundColor: Colors.purple,
            ),
            child: const Text(
              "Login",
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }

  Widget _forgotPassword(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: const Text(
        "Forgot password?",
        style: TextStyle(color: Colors.purple),
      ),
    );
  }

  Widget _signup(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("Don't have an account? "),
        TextButton(
          onPressed: () {},
          child: const Text(
            "Sign Up",
            style: TextStyle(color: Colors.purple),
          ),
        ),
      ],
    );
  }
}