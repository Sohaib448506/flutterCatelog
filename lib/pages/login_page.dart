import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
        child: Column(
      children: [
        Image.asset(
          "assets/images/img2.jpg",
          fit: BoxFit.cover,
        ),
        const SizedBox(
          height: 10.0,
        ),
        const Text(
          "Setup Done. Welcome to Flutter",
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 10.0,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 8.0),
          child: Column(
            children: [
              TextFormField(
                decoration: const InputDecoration(
                    hintText: "Enter User Name", labelText: "User Name"),
              ),
              TextFormField(
                obscureText: true,
                decoration: const InputDecoration(
                    hintText: "Enter Password", labelText: "Password"),
              ),
              const SizedBox(
                height: 10.0,
              ),
              ElevatedButton(
                  onPressed: () {
                    if (kDebugMode) {
                      print("Hello");
                    }
                  },
                  child: const Text("Login"))
            ],
          ),
        )
      ],
    ));
  }
}


// class LoginPage extends StatelessWidget {
//   const LoginPage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return const Material(
//         child: Center(
//       child: Text(
//         "Hello Login",
//         style: TextStyle(
//           fontSize: 20,
//           fontWeight: FontWeight.bold,
//           color: Colors.blue,
//         ),
//         //textScaleFactor: 6.0,
//       ),
//     ));
//   }
// }