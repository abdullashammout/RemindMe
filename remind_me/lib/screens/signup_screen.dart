import 'package:flutter/material.dart';
import 'package:remind_me/screens/home_screen.dart';
import 'package:remind_me/utils/color_utils.dart';
import 'package:remind_me/reusable_widgets/reusable_widget.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController _emailTextController = TextEditingController();
  TextEditingController _passwordTextController = TextEditingController();
  TextEditingController _userNameTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: const Text(
            "Sign Up",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ),
        body: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                hexStringToColor("CB2B93"),
                hexStringToColor("9546C4"),
                hexStringToColor("5E61F4")
              ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
              child: SingleChildScrollView(
                  child: Padding(
                padding: EdgeInsets.fromLTRB(20, 100, 20, 0),
                child: Column(
                  children: <Widget>[
                    const SizedBox(
                      height: 20,
                    ), // SizedBox
                    reusableTextField("Enter UserName", Icons.person_outline,
                        false, _userNameTextController),
                    const SizedBox(
                      height: 20,
                    ), // SizedBox
                    reusableTextField("Enter Email Id", Icons.person_outline,
                        false, _emailTextController),
                    const SizedBox(
                      height: 20,
                    ), // SizedBox
                    reusableTextField("Enter Password", Icons.lock_outlined,
                        true, _passwordTextController),
                    const SizedBox(
                      height: 20,
                    ), // SizedBox
                    signInSignUpButton(context, false, () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HomeScreen()));
                    })
                  ], // <Widget>[]
                ), // Column
              ))),
        ));
  }
}
