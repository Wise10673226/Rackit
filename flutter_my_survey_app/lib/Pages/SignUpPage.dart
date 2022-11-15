import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_my_survey_app/Pages/BottomNavigationBar.dart';

import 'package:flutter_my_survey_app/model/user_model.dart';
import 'package:fluttertoast/fluttertoast.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final _auth = FirebaseAuth.instance;

  //form key
  final _formKey = GlobalKey<FormState>();
  // text editing controllers
  final firstNameEditingController = new TextEditingController();
  final lastNameEditingController = new TextEditingController();
  final emailEditingController = new TextEditingController();
  final passwordEditingController = new TextEditingController();
  final confirmPasswordEditingController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    //first name field
    final firstNameField = TextFormField(
      autofocus: false,
      controller: firstNameEditingController,
      keyboardType: TextInputType.name,
      validator: (value) {
        RegExp regex = RegExp(r'^.{3,}$');
        if (value!.isEmpty) {
          return ('First Name cannot be empty');
        }
        if (!regex.hasMatch(value)) {
          return ("Enter a Valid Name (min 3 characters) ");
        }
      },
      onSaved: (value) {
        firstNameEditingController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
          prefixIcon: Icon(Icons.person),
          contentPadding: EdgeInsets.fromLTRB(15, 10, 15, 10),
          hintText: 'First Name',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          )),
    );

    //last name field
    final lastNameField = TextFormField(
      autofocus: false,
      controller: lastNameEditingController,
      keyboardType: TextInputType.name,
      validator: (value) {
        RegExp regex = RegExp(r'^.{3,}$');
        if (value!.isEmpty) {
          return ('Last Name cannot be empty');
        }
        if (!regex.hasMatch(value)) {
          return ("Enter a Valid Name (min 3 characters) ");
        }
      },
      onSaved: (value) {
        lastNameEditingController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
          prefixIcon: Icon(Icons.person),
          contentPadding: EdgeInsets.fromLTRB(15, 10, 15, 10),
          hintText: 'Last Name',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          )),
    );

// email field
    final emailField = TextFormField(
      autofocus: false,
      controller: emailEditingController,
      keyboardType: TextInputType.emailAddress,
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
      onSaved: (value) {
        emailEditingController.text = value!;
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
      controller: passwordEditingController,
      obscureText: true,
      validator: (value) {
        RegExp regex = RegExp(r'^.{6,}$');
        if (value!.isEmpty) {
          return ('Password is required for Login');
        }
        if (!regex.hasMatch(value)) {
          return ("Enter a Valid Password (min 6 characters) ");
        }
      },
      onSaved: (value) {
        passwordEditingController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
          prefixIcon: Icon(Icons.vpn_key),
          contentPadding: EdgeInsets.fromLTRB(15, 10, 15, 10),
          hintText: 'Password',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          )),
    );

    // confirm password
    final confirmPasswordField = TextFormField(
      autofocus: false,
      controller: confirmPasswordEditingController,
      obscureText: true,
      validator: (value) {
        if (confirmPasswordEditingController.text.length > 6 &&
            passwordEditingController.text != value) {
          return "Passwords don't match";
        }
        return null;
      },
      onSaved: (value) {
        confirmPasswordEditingController.text = value!;
      },
      textInputAction: TextInputAction.done,
      decoration: InputDecoration(
          prefixIcon: Icon(Icons.vpn_key),
          contentPadding: EdgeInsets.fromLTRB(15, 10, 15, 10),
          hintText: 'Confirm Password',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          )),
    );

    //Sign Up button
    final signUpButton = MaterialButton(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      elevation: 5,
      onPressed: () {
        signUp(emailEditingController.text, passwordEditingController.text);
      },
      padding: EdgeInsets.fromLTRB(15, 10, 15, 10),
      minWidth: MediaQuery.of(context).size.width,
      child: Text(
        'Sign Up',
        style: TextStyle(
            color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
      ),
      color: Colors.blue,
    );

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              // goes back to our home page
              Navigator.of(context).pop();
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.blue,
            )),
      ),
      backgroundColor: Colors.white,
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
                        firstNameField,
                        SizedBox(
                          height: 10,
                        ),
                        lastNameField,
                        SizedBox(
                          height: 10,
                        ),
                        emailField,
                        SizedBox(
                          height: 10,
                        ),
                        passwordField,
                        SizedBox(
                          height: 10,
                        ),
                        confirmPasswordField,
                        SizedBox(
                          height: 10,
                        ),
                        signUpButton,
                      ],
                    )),
              )),
        ),
      ),
    );
  }

  void signUp(
    String email,
    String password,
  ) async {
    if (_formKey.currentState!.validate()) {
      await _auth
          .createUserWithEmailAndPassword(email: email, password: password)
          .then((value) => {postDetailsToFirestore()})
          .catchError((e) {
        Fluttertoast.showToast(msg: e!.message);
      });
    }
    ;
  }

  postDetailsToFirestore() async {
    // calling our firestore
    // calling our usermodel
    FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
    User? user = _auth.currentUser;

    UserModel userModel = UserModel();

    //writing all the values
    userModel.email = user!.email;
    userModel.uid = user.uid;
    userModel.firstName = firstNameEditingController.text;
    userModel.lastName = lastNameEditingController.text;

    await firebaseFirestore
        .collection("users")
        .doc(user.uid)
        .set(userModel.toMap());

    Fluttertoast.showToast(msg: "Account Created Successfully");

    Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (context) => BottomNavigationPage()),
        (route) => false);
  }
}
