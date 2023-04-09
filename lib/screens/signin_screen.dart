import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_application_4/reusable_widgets/reusable_widget.dart';
import 'package:flutter_application_4/utils/colors.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        decoration: BoxDecoration(
          gradient:LinearGradient(
            colors: [
              hexToString("#CB2B93"),
              hexToString("9546c4"),
              hexToString("5E61F4")     
            ],
            begin:Alignment.center,
            end: Alignment.bottomCenter
          )
        ),
        child: SingleChildScrollView(
          child:Padding(
            padding:EdgeInsets.fromLTRB(
              20,MediaQuery.of(context).size.height * 0.2,20,330
            ),
          child: Column(
            children: <Widget>[
                logoWidget("assets/images/logo.png"),
                reusableTextField(
                  "Enter Email",
                  Icons.lock_outline,
                  false,
                  emailController,
                ),
                const SizedBox(
                  height:20,
                ),
                reusableTextField(
                  "Enter Password",
                  Icons.lock_outline,
                  true,
                  passwordController,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}