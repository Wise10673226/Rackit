import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_my_survey_app/Pages/Screens/Earned.dart';
import 'package:flutter_my_survey_app/Pages/Screens/Inbox.dart';
import 'package:flutter_my_survey_app/Pages/Screens/Profile.dart';
import 'package:flutter_my_survey_app/Pages/Screens/Surveys.dart';

class BottomNavigationPage extends StatefulWidget {
  const BottomNavigationPage({Key? key}) : super(key: key);

  @override
  State<BottomNavigationPage> createState() => _BottomNavigationPageState();
}

class _BottomNavigationPageState extends State<BottomNavigationPage> {
  int _selectedIndex = 0;
  static final List<Widget> _widgetOptions = <Widget>[
    Earned(),
    Surveys(),
    Inbox(),
    Profile(),
  ];

//the void below is a method
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: _widgetOptions[_selectedIndex]),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(FluentSystemIcons.ic_fluent_checkmark_regular),
            activeIcon: Icon(FluentSystemIcons.ic_fluent_checkmark_filled),
            label: 'Surveys',
          ),
          BottomNavigationBarItem(
            icon: Icon(FluentSystemIcons.ic_fluent_currency_regular),
            activeIcon: Icon(FluentSystemIcons.ic_fluent_currency_filled),
            label: 'Earned',
          ),
          BottomNavigationBarItem(
            icon: Icon(FluentSystemIcons.ic_fluent_mail_regular),
            activeIcon: Icon(FluentSystemIcons.ic_fluent_mail_filled),
            label: 'Inbox',
          ),
          BottomNavigationBarItem(
            icon: Icon(FluentSystemIcons.ic_fluent_person_regular),
            activeIcon: Icon(FluentSystemIcons.ic_fluent_person_filled),
            label: 'Profile',
          ),
        ],
        elevation: 10,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.shifting,
        currentIndex: _selectedIndex,
      ),
    );
  }
}
