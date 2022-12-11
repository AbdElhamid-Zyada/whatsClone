import 'package:flutter/material.dart';

import '../../shared/components/components.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool visiblePassword = false;
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  const Text(
                    "LOGIN",
                    style: TextStyle(
                      fontSize: 60,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  defaultTextForm(
                    controller: emailController,
                    label: "E-mail Adress",
                    prefix: Icon(Icons.email),
                    type: TextInputType.emailAddress,
                    validationError: "please fill the Email field",
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  defaultTextForm(
                    controller: passwordController,
                    label: "Password",
                    prefix: Icon(Icons.password),
                    isPassword: !visiblePassword,
                    type: TextInputType.visiblePassword,
                    suffix: IconButton(
                        onPressed: () {
                          setState(() {
                            visiblePassword = visiblePassword ? false : true;
                          });
                        },
                        icon: visiblePassword
                            ? Icon(Icons.remove_red_eye)
                            : Icon(Icons.remove_red_eye_outlined)),
                    validationError: "Please fill the password field",
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.lightBlue,
                      border: Border.all(),
                    ),
                    child: MaterialButton(
                      onPressed: () {
                        print(
                            "${emailController.text}\n${passwordController.text}");
                        formKey.currentState!.validate();
                      },
                      child: const Text("LOGIN"),
                    ),
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "don't have an account ?",
                      ),
                      TextButton(
                        onPressed: () {
                          print("on register");
                        },
                        child: const Text(
                          "Register",
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
