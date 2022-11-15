import 'package:flutter/material.dart';
import 'package:flutter_my_survey_app/Pages/LoginPage.dart';
import 'package:flutter_my_survey_app/Pages/SignUpPage.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({Key? key}) : super(key: key);

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
          Text(
            'Rackit ',
            style: TextStyle(
                color: Colors.blue, fontWeight: FontWeight.w500, fontSize: 25),
          ),
        ]),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
              padding: const EdgeInsets.all(15.0),
              height: 130,
              width: 130,
              child: Image(image: AssetImage('assets/image.jpg'))),
          Column(
            children: [
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20))),
                  onPressed: () {},
                  child: Container(
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: 15, bottom: 15, left: 30, right: 30),
                      child: Text(
                        "Sign up with google",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  )),
              SizedBox(
                height: 15,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(255, 45, 73, 97),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20))),
                  onPressed: () {},
                  child: Container(
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: 15, bottom: 15, left: 30, right: 30),
                      child: Text(
                        "Sign up with facebook",
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  )),
              SizedBox(
                height: 15,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.black,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20))),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SignUpPage()));
                  },
                  child: Container(
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: 15, bottom: 15, left: 30, right: 30),
                      child: Text(
                        "Sign up with email",
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  )),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(height: 1, width: 150, color: Colors.grey[300]),
                  const Text(
                    'Or',
                    style: TextStyle(fontSize: 16),
                  ),
                  Container(height: 1, width: 150, color: Colors.grey[300])
                ],
              ),
              const SizedBox(height: 20.0),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20))),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LoginPage()));
                  },
                  child: Container(
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: 15, bottom: 15, left: 30, right: 30),
                      child: Text(
                        "Login",
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  )),
              SizedBox(
                height: 20,
              )
            ],
          )
        ],
      )),
    );
  }
}
