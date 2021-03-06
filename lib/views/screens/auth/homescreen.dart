import 'package:flutter/material.dart';
import 'package:tiktok_clone_app/constant.dart';
import 'package:tiktok_clone_app/views/widgets/custom_icon.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            pageIndex = index;
          });
        },
        backgroundColor: backgroundColor,
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: Colors.white,
        selectedItemColor: Colors.red,
        currentIndex: pageIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, size: 30),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search, size: 30),
            label: "Search",
          ),
          BottomNavigationBarItem(
            icon: CustomIcon(),
            label: " ",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message, size: 30),
            label: "Message",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person, size: 30),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
