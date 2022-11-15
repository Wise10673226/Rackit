import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        elevation: 10,
        title: Text(
          "Profile",
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
                color: Colors.black,
                padding:
                    EdgeInsets.only(top: 15, bottom: 15, left: 90, right: 90),
                child: InkWell(
                  onTap: () {},
                  child: Text("Link with Facebook",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      )),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Digital Surveys",
                      style: TextStyle(
                          fontSize: 16, fontWeight: FontWeight.normal),
                    ),
                    IconButton(
                      icon: Icon(Icons.toggle_off),
                      color: Colors.grey,
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
              Divider(
                height: 0.5,
                color: Colors.grey,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Enable face ID",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.normal),
                      ),
                      IconButton(
                        icon: Icon(Icons.toggle_off),
                        color: Colors.white,
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Divider(
                height: 0.5,
                color: Colors.grey,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Support",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.normal),
                      ),
                      IconButton(
                        icon: Icon(Icons.toggle_off),
                        color: Colors.white,
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
              ),
              Divider(
                height: 0.5,
                color: Colors.grey,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "FAQ & Guide",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.normal),
                      ),
                      IconButton(
                        icon: Icon(Icons.toggle_off),
                        color: Colors.white,
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
              ),
              Divider(
                height: 0.5,
                color: Colors.grey,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Tell a friend",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.normal),
                      ),
                      IconButton(
                        icon: Icon(Icons.toggle_off),
                        color: Colors.white,
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
              ),
              Divider(
                height: 0.5,
                color: Colors.grey,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Payout information",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.normal),
                      ),
                      IconButton(
                        icon: Icon(Icons.toggle_off),
                        color: Colors.white,
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
              ),
              Divider(
                height: 0.5,
                color: Colors.grey,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Change Password",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.normal),
                      ),
                      IconButton(
                        icon: Icon(Icons.toggle_off),
                        color: Colors.white,
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
              ),
              Divider(
                height: 0.5,
                color: Colors.grey,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Privacy Center",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.normal),
                      ),
                      IconButton(
                        icon: Icon(Icons.toggle_off),
                        color: Colors.white,
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
              ),
              Divider(
                height: 0.5,
                color: Colors.grey,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Logout",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.normal),
                      ),
                      IconButton(
                        icon: Icon(Icons.toggle_off),
                        color: Colors.white,
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
              ),
              Divider(
                height: 0.5,
                color: Colors.grey,
              ),
              SizedBox(height: 30),
              Text(
                "Version 3.0",
                style: TextStyle(color: Colors.grey, fontSize: 16),
              ),
              SizedBox(height: 30),
            ],
          ),
        ],
      ),
    );
  }
}
