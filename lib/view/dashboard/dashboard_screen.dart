import '../../profile_screen.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {

  int selectedIndex = 0;

  PageController controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: (index){
          setState(() {
            selectedIndex = index;
            controller.jumpToPage(index);
          });
        },
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
          BottomNavigationBarItem(icon: Icon(Icons.notifications), label: "Notification"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),

      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: controller,
        scrollDirection: Axis.horizontal,
        children: [
          Container(
            height: 800,
            width: double.infinity,
            color: Colors.red,
            child: const Center(child: Text("1")),
          ),
          Container(
            height: 800,
            width: double.infinity,
            color: Colors.yellow,
            child: const Center(child: Text("1")),
          ),
          Container(
            height: 800,
            width: double.infinity,
            color: Colors.grey,
            child: const Center(child: Text("1")),
          ),
          const ProfileScreen()
        ],
      ),
    );
  }
}
