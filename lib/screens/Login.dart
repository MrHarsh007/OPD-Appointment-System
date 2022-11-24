import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medicare/screens/HomePage.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  //LoginScreen function
  // final FirebaseAuth _auth = FirebaseAuth.instance;
  // get user => _auth.currentUser;

  Future signIn({required String email, required String password}) async {
    // try {
    //   await _auth.signInWithEmailAndPassword(email: email, password: password);
    //   return null;
    // } on FirebaseAuthException catch (e) {
    //   return e.message;
    // }
  }

  // static Future<User?> LoginScreenUsingEmailPassword(
  //     {required String email,
  //       required String password,
  //       required BuildContext context}) async {
  //   FirebaseAuth auth = FirebaseAuth.instance;
  //   User? user;
  //   try{
  //     UserCredential userCredential = await auth.signInWithEmailAndPassword(
  //         email: email,password: password);
  //     user = userCredential.user;
  //   } on FirebaseAuthException catch (e){
  //     if(e.code=="user-not-found"){
  //       print("No user found for that email");
  //     }
  //   }
  //
  //   return user;
  // }

  @override
  Widget build(BuildContext context) {
    //create textfield controller
    TextEditingController _emailController = TextEditingController();
    TextEditingController _passwordController = TextEditingController();
    return Scaffold(
      body: Material(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "MyApp Title",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                "LoginScreen to Your App",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 44.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 44.0,
              ),
              TextField(
                controller: _emailController,
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                  hintText: "User Email",
                  prefixIcon: Icon(Icons.mail, color: Colors.black),
                ),
              ),
              const SizedBox(
                height: 26.0,
              ),
              TextField(
                controller: _passwordController,
                obscureText: true,
                decoration: const InputDecoration(
                  hintText: "User Password",
                  prefixIcon: Icon(Icons.lock, color: Colors.black),
                ),
              ),
              const SizedBox(
                height: 12.0,
              ),
              const Text(
                "Don't Remember your Password?",
                style: TextStyle(color: Colors.blue),
              ),
              const SizedBox(
                height: 88.0,
              ),
              Container(
                width: double.infinity,
                child: RawMaterialButton(
                  fillColor: const Color(0xFF0069FE),
                  elevation: 0.0,
                  padding: const EdgeInsets.symmetric(vertical: 20.0),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0)),
                  onPressed: () async {
                    signIn(
                            email: _emailController.text,
                            password: _passwordController.text)
                        .then((result) {
                      if (result == null) {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (context) => HomePage()));
                      } else {
                        final snackBar = SnackBar(
                          content: Text(
                            result,
                            style: TextStyle(fontSize: 16),
                          ),
                        );
                      }
                    });
                    /*
                  //test
                  User? user = await LoginScreenUsingEmailPassword(email: _emailController.text, password: _passwordController.text, context: context);
                  print(user);
                  if(user!= null){
                    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>ProfileScreen()));
                    //let's make Profile screen
                  }*/
                  },
                  child: const Text("LoginScreen",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                      )),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
