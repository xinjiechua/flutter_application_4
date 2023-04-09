import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_4/reusable_widgets/reusable_widget.dart';
import 'package:flutter_application_4/screens/home_screen.dart';
import 'package:flutter_application_4/utils/colors.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
   TextEditingController emailController = TextEditingController();
   TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation:0, 
        leading:IconButton( 
        icon: const Icon(Icons.arrow_back_ios), 
        onPressed:(){}
        ),
        title: const Text(
          "Sign Up",
          style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          ),
        ),
      ),
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
                const SizedBox(height:20,),
                reusableButton(context, false, (){FirebaseAuth.instance.signInWithEmailAndPassword(
                  email: emailController.text,
                  password: passwordController.text,
                  )
                  .then(
                    (value) => {
                      Navigator.pushReplacement(
                        context, 
                        MaterialPageRoute(
                          builder: (builder) => const HomePage(),
                        ),
                      )
                    },
                  );  
                },)
              ],
            ),
          ),
        ),
      ),
    );
  }
}