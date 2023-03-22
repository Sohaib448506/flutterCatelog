import 'package:catlogapp/utils/routes.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String text = "";
  bool changeButton = false;
  @override
  Widget build(BuildContext context) {
    return Material(
        child: SingleChildScrollView(
      child: Column(
        children: [
          Image.asset(
            "assets/images/img2.jpg",
            fit: BoxFit.cover,
          ),
          const SizedBox(
            height: 10.0,
          ),
          Text(
            "Welcome $text to Flutter",
            style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 10.0,
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 16.0, horizontal: 8.0),
            child: Column(
              children: [
                TextFormField(
                  decoration: const InputDecoration(
                      hintText: "Enter User Name", labelText: "User Name"),
                  onChanged: (value) {
                    text = value;
                    setState(() {});
                  },
                ),
                TextFormField(
                  obscureText: true,
                  decoration: const InputDecoration(
                      hintText: "Enter Password", labelText: "Password"),
                ),
                const SizedBox(
                  height: 10.0,
                ),

                InkWell(
                  onTap: () async {
                    setState(() {
                      changeButton = true;
                    });
                    await Future.delayed(const Duration(seconds: 1));
                    // ignore: use_build_context_synchronously
                    Navigator.pushNamed(context, MyRoutes.homeRoute);
                  },
                  child: AnimatedContainer(
                    duration: const Duration(seconds: 1),
                    width: changeButton ? 50 : 150,
                    height: 50,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Colors.deepPurple,
                        borderRadius: BorderRadius.circular(8)),
                    child: changeButton
                        ? const Icon(Icons.done, color: Colors.white)
                        : const Text(
                            "Login",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          ),
                  ),
                )
                // ElevatedButton(
                //     onPressed: () {
                //       if (kDebugMode) {
                //         Navigator.pushNamed(context, MyRoutes.homeRoute);
                //       }
                //     },
                //     child: const Text("Login"))
              ],
            ),
          )
        ],
      ),
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