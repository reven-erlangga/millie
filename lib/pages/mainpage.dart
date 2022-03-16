import 'package:flutter/material.dart';
import 'package:bottom_bar/bottom_bar.dart';
import 'package:millie/pages/dashboard/dashboard.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentPage = 0;
  final _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: [
          HomePage(),
          Container(color: Colors.red),
          Container(color: Colors.greenAccent.shade700),
          Container(color: Colors.orange),
        ],
        onPageChanged: (index) {
          // Use a better state management solution
          // setState is used for simplicity
          setState(() => _currentPage = index);
        },
      ),
      bottomNavigationBar: BottomBar(
        selectedIndex: _currentPage,
        onTap: (int index) {
          _pageController.jumpToPage(index);
          setState(() => _currentPage = index);
        },
        items: <BottomBarItem>[
          BottomBarItem(
            icon: const Icon(Icons.dashboard),
            title: Text('Dashboard'),
            activeColor: Colors.blue,
            inactiveColor: Color(0xffB3B5C4),
          ),
          BottomBarItem(
            icon: const Icon(Icons.notifications),
            title: Text('Notifications'),
            activeColor: Colors.red,
            inactiveColor: Color(0xffB3B5C4),
          ),
          BottomBarItem(
            icon: const Icon(Icons.favorite),
            title: Text('Favorite'),
            activeColor: Colors.greenAccent.shade700,
            inactiveColor: Color(0xffB3B5C4),
          ),
          BottomBarItem(
            icon: const Icon(Icons.person),
            title: Text('Profile'),
            activeColor: Colors.orange,
            inactiveColor: Color(0xffB3B5C4),
          ),
        ],
      ),
    );
  }
}
