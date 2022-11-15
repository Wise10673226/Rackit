import 'package:flutter/material.dart';

class Surveys extends StatefulWidget {
  const Surveys({Key? key}) : super(key: key);

  @override
  State<Surveys> createState() => _SurveysState();
}

class _SurveysState extends State<Surveys> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 3,
        title: Text(
          "Surveys",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text(
              "Currently, there are no surveys.",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: Text(
              "Making sure notifications are 'on' will ensure you are immediately alerted about new surveys",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey),
            ),
          ),
        ],
      ),
    );
  }
}
