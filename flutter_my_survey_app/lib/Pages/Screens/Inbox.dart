import 'package:flutter/material.dart';

class Inbox extends StatefulWidget {
  const Inbox({Key? key}) : super(key: key);

  @override
  State<Inbox> createState() => _InboxState();
}

class _InboxState extends State<Inbox> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        elevation: 10,
        title: Text(
          "Inbox",
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
              Container(
                height: 250,
                width: double.infinity,
                child: Card(
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8, top: 0),
                    child: InkWell(
                      onTap: () {},
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "* Cash alert!",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            "Tap now and earn big!",
                            style: TextStyle(fontSize: 14, color: Colors.grey),
                          ),
                          SizedBox(height: 10),
                          Text(
                            "Today at 8:00 am",
                            style: TextStyle(fontSize: 12, color: Colors.grey),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Divider(
                            height: 1,
                            color: Colors.grey,
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            "  * Access 50\$ Surveys ",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 10),
                          Text(
                            "You've been missing out on 45\$ surveys! Tap to learn how to access it.",
                            style: TextStyle(fontSize: 14, color: Colors.grey),
                          ),
                          SizedBox(height: 10),
                          Text(
                            "Today at 8:00 am",
                            style: TextStyle(fontSize: 12, color: Colors.grey),
                          ),
                        ],
                      ),
                    ),
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
