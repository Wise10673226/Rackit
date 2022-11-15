import 'dart:ffi';

import 'package:flutter/material.dart';

class Earned extends StatefulWidget {
  const Earned({Key? key}) : super(key: key);

  @override
  State<Earned> createState() => _EarnedState();
}

class _EarnedState extends State<Earned> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 10,
        title: Text(
          "Earned",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ListView(
        children: [
          Column(
            children: [
              SizedBox(height: 30),
              Container(
                height: 120,
                width: 300,
                child: Card(
                  elevation: 5,
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 12.0, right: 12, bottom: 0, top: 8),
                    child: Column(children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Payout",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "0.00\$",
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20))),
                          onPressed: () {},
                          child: Container(
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  top: 15, bottom: 15, left: 30, right: 30),
                              child: Text(
                                "Redeem at 10\$",
                                style: TextStyle(fontSize: 16),
                              ),
                            ),
                          )),
                    ]),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  elevation: 5,
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 12.0, right: 12, bottom: 0, top: 20),
                    child: Column(children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Payout history",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Payout",
                            style: TextStyle(fontSize: 16, color: Colors.white),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 0, bottom: 30),
                        child: Text(
                          "No payouts yet (We will get there!) ",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey),
                        ),
                      ),
                    ]),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  elevation: 5,
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 12.0, right: 12, bottom: 0, top: 20),
                    child: Column(children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Transaction history",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Payout",
                            style: TextStyle(fontSize: 16, color: Colors.white),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 0, bottom: 30),
                        child: Text(
                          "No transactions yet",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey),
                        ),
                      ),
                    ]),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
