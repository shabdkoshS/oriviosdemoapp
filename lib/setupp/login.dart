import 'package:flutter/material.dart';
import 'package:orivios_company_demo/setupp/dbmanager.dart';
import 'package:orivios_company_demo/setupp/singup.dart';
import 'package:orivios_company_demo/setupp/user.dart';

void main() {
  runApp(MyApp());
}

class login extends StatefulWidget {
  login({super.key});

  @override
  State<login> createState() => _HomeeState();
}

List<Ussers>? userList = [];

class _HomeeState extends State<login> {
  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    DbManager().getUserList();
    TextEditingController UsernameController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    // ignore: unused_local_variable
    late List<Ussers> userList;

    return Scaffold(
      body: Form(
        key: _formKey,
        child: Container(
          margin: const EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              header(context),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  TextField(
                    controller: UsernameController,
                    decoration: InputDecoration(
                      hintText: "User Id",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(18),
                          borderSide: BorderSide.none),
                      filled: true,
                    ),
                  ),
                  const SizedBox(height: 10),
                  TextField(
                    controller: passwordController,
                    decoration: InputDecoration(
                      hintText: "Password",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(18),
                          borderSide: BorderSide.none),
                      filled: true,
                    ),
                    obscureText: true,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  const SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SignupPage()));
                    },
                    style: ElevatedButton.styleFrom(
                      shape: const StadiumBorder(),
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      backgroundColor: Colors.blue,
                    ),
                    child: const Text(
                      "Login",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  )
                ],
              ),
              forgotPassword(context),
              signup(context),
            ],
          ),
        ),
      ),
    );
  }

  header(context) {
    return const Column(
      children: [
        Text(
          "LOGIN PAGE",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }

  // inputField(context) {
  //   return }

  forgotPassword(context) {
    return TextButton(
      onPressed: () {},
      child: const Text(
        "Forgot password?",
        style: TextStyle(color: Colors.blue),
      ),
    );
  }

  signup(context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("Dont have an account? "),
        TextButton(
          onPressed: () {},
          child: const Text(
            "Sign Up",
            style: TextStyle(color: Colors.blue),
          ),
        ),
      ],
    );
  }
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: login());
  }
}
