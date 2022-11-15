// ignore: file_names
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_my_survey_app/Pages/BottomNavigationBar.dart';
import 'package:flutter_my_survey_app/Pages/Screens/IntroPage.dart';

import 'package:flutter_my_survey_app/Pages/SignUpPage.dart';
import 'package:fluttertoast/fluttertoast.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  //form key
  final _formKey = GlobalKey<FormState>();

  // editing controllers
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  //firebase
  final _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    //email field
    final emailField = TextFormField(
      autofocus: false,
      validator: (value) {
        if (value!.isEmpty) {
          return ("Please Enter Your Email");
        }
        //reg expression for email validation
        if (!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]").hasMatch(value)) {
          return ("Please Enter a Valid Email");
        }
        return null;
      },
      controller: emailController,
      keyboardType: TextInputType.emailAddress,
      onSaved: (value) {
        emailController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
          prefixIcon: Icon(Icons.email),
          contentPadding: EdgeInsets.fromLTRB(15, 10, 15, 10),
          hintText: 'Email',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          )),
    );

    //password field
    final passwordField = TextFormField(
      autofocus: false,
      validator: (value) {
        RegExp regex = RegExp(r'^.{6,}$');
        if (value!.isEmpty) {
          return ('Password is required for Login');
        }
        if (!regex.hasMatch(value)) {
          return ("Enter a Valid Password (min 6 characters) ");
        }
      },
      controller: passwordController,
      obscureText: true,
      onSaved: (value) {
        passwordController.text = value!;
      },
      textInputAction: TextInputAction.done,
      decoration: InputDecoration(
          prefixIcon: Icon(Icons.vpn_key),
          contentPadding: EdgeInsets.fromLTRB(15, 10, 15, 10),
          hintText: 'Password',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          )),
    );

    //login button
    final loginButton = MaterialButton(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      elevation: 5,
      onPressed: () {
        signIn(emailController.text, passwordController.text);
      },
      padding: EdgeInsets.fromLTRB(15, 10, 15, 10),
      minWidth: MediaQuery.of(context).size.width,
      child: Text(
        'Login',
        style: TextStyle(
            color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
      ),
      color: Colors.blue,
    );

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          InkWell(
            onTap: () => Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (context) => IntroPage())),
            borderRadius: BorderRadius.circular(100.0),
            child: Container(
              height: 40,
              width: 40,
              decoration:
                  BoxDecoration(color: Colors.grey[50], shape: BoxShape.circle),
              child: const Icon(Icons.arrow_back_ios_new_outlined,
                  color: Colors.black, size: 20),
            ),
          ),
          Text(
            'Rackit ',
            style: TextStyle(
                color: Colors.blue, fontWeight: FontWeight.w500, fontSize: 25),
          ),
        ]),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(36.0),
                child: Form(
                    key: _formKey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 100,
                          child: Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(15),
                                child: Image.asset(
                                  'assets/image.jpg',
                                  fit: BoxFit.contain,
                                ),
                              )),
                        ),
                        emailField,
                        SizedBox(
                          height: 10,
                        ),
                        passwordField,
                        SizedBox(
                          height: 10,
                        ),
                        loginButton,
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Don't have an account? ",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 99, 96, 96)),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => SignUpPage()));
                              },
                              child: Text(
                                'Sign Up ',
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.blue),
                              ),
                            )
                          ],
                        )
                      ],
                    )),
              )),
        ),
      ),
    );
  }

  //login function
  void signIn(String email, String password) async {
    if (_formKey.currentState!.validate()) {
      await _auth
          .signInWithEmailAndPassword(email: email, password: password)
          .then((uid) => {
                Fluttertoast.showToast(msg: "You have Successfully Logged in"),
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (context) => BottomNavigationPage()))
              })
          .catchError((e) {
        Fluttertoast.showToast(msg: e!.message);
      });
    }
  }
}
