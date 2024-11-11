import 'package:flutter/material.dart';
import 'package:orivios_company_demo/setupp/dbmanager.dart';
import 'package:orivios_company_demo/setupp/mainscreen.dart';
import 'package:orivios_company_demo/setupp/user.dart';

class SignupPage extends StatelessWidget {
  SignupPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    DbManager dbManager = DbManager();
    TextEditingController usernameController = TextEditingController();
    TextEditingController emailController = TextEditingController();
    TextEditingController phoneController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    TextEditingController conformpasswordController = TextEditingController();

    return Scaffold(
      body: ListView(
        children: [
          Container(
            child: Column(
              children: [
                const SizedBox(height: 60.0),
                const Text(
                  "Sign up",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.all(24),
            height: 420,
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  TextFormField(
                    controller: usernameController,
                    decoration: InputDecoration(
                        hintText: "Username",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(18),
                            borderSide: BorderSide.none),
                        filled: true,
                        prefixIcon: const Icon(Icons.person)),
                  ),
                  const SizedBox(height: 20),
                  TextFormField(
                    controller: phoneController,
                    decoration: InputDecoration(
                      hintText: "Phone Number",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(18),
                          borderSide: BorderSide.none),
                      filled: true,
                      prefixIcon: const Icon(Icons.phone),
                    ),
                    obscureText: true,
                  ),
                  const SizedBox(height: 20),
                  TextFormField(
                    controller: emailController,
                    decoration: InputDecoration(
                      hintText: "Email",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(18),
                          borderSide: BorderSide.none),
                      filled: true,
                      prefixIcon: const Icon(Icons.email),
                    ),
                    validator: (String? value) {
                      return (value!.length == 0)
                          ? 'Do not use the @ char.'
                          : null;
                    },
                  ),
                  const SizedBox(height: 20),
                  TextFormField(
                    controller: passwordController,
                    decoration: InputDecoration(
                      hintText: "Password",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(18),
                          borderSide: BorderSide.none),
                      filled: true,
                      prefixIcon: const Icon(Icons.lock),
                    ),
                    obscureText: true,
                  ),
                  const SizedBox(height: 20),
                  TextFormField(
                    controller: conformpasswordController,
                    decoration: InputDecoration(
                      hintText: "Conform Password",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(18),
                          borderSide: BorderSide.none),
                      filled: true,
                      prefixIcon: const Icon(Icons.lock),
                    ),
                    obscureText: true,
                  ),
                ],
              ),
            ),
          ),
          Container(
              height: 60,
              width: 50,
              margin: const EdgeInsets.all(24),
              padding: const EdgeInsets.only(top: 3, left: 3),
              child: ElevatedButton(
                onPressed: () async {
                  if (_formKey.currentState!.validate()) {
                    await dbManager
                        .insertStudent(
                      Ussers(
                        username: usernameController.text,
                        email: emailController.text,
                        phone: phoneController.text,
                        password: passwordController.text,
                        conformpassword: conformpasswordController.text,
                      ),
                    )
                        .then((value) {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => ScreenHome(),
                      ));
                      phoneController.clear();
                      usernameController.clear();
                      emailController.clear();
                      passwordController.clear();
                      conformpasswordController.clear();
                    });
                  }
                },
                child: const Text(
                  "Sign up",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                style: ElevatedButton.styleFrom(
                  shape: const StadiumBorder(),
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  backgroundColor: Colors.blue,
                ),
              )),
          Container(
            height: 60,
            width: 60,
            margin: const EdgeInsets.all(24),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              border: Border.all(
                color: Colors.blue,
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.white.withOpacity(0.5),
                  spreadRadius: 1,
                  blurRadius: 1,
                  offset: const Offset(0, 1),
                ),
              ],
            ),
            child: TextButton(
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(width: 18),
                  const Text(
                    "Sign In with Google",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Already have an account?"),
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Login",
                      style: TextStyle(color: Colors.blue),
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
