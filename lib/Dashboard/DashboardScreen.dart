import 'package:bottom_navigation_bar/AppStyling.dart';
import 'package:bottom_navigation_bar/Dashboard/ForumScreen.dart';
import 'package:bottom_navigation_bar/Dashboard/HomeScreen.dart';
import 'package:bottom_navigation_bar/Dashboard/PrizeScreen.dart';
import 'package:bottom_navigation_bar/Dashboard/ProfileScreen.dart';
import 'package:bottom_navigation_bar/Dashboard/RankingScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return DashboardScreenState();
  }
}

class DashboardScreenState extends State<DashboardScreen> {
  int currentPage = 0;
  late PageController pageController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        physics: const ScrollPhysics(),
        onPageChanged: onPageChange,
        controller: pageController,
        children: const [
          HomeScreen(),
          PrizeScreen(),
          ForumScreen(),
          RankingScreen(),
          ProfileScreen()
        ],
      ),
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
            canvasColor: AppStyling.primaryColor,

            textTheme: Theme.of(context)
                .textTheme
                .copyWith(caption: TextStyle(color: Colors.grey[500]))),
        child: BottomNavigationBar(
          selectedItemColor: Colors.red,
          unselectedItemColor: Colors.grey[500],
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.price_change), label: "Prize"),
            BottomNavigationBarItem(
                icon: Icon(Icons.notifications_active), label: "Forum"),
            BottomNavigationBarItem(icon: Icon(Icons.alarm), label: "Ranking"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile")
          ],
          currentIndex: currentPage,
          onTap: onPageTab,
        ),
      ),
    );
  }

  void onPageTab(int page) {
    pageController.jumpToPage(page);
  }

  @override
  void initState() {
    super.initState();
    pageController = PageController(initialPage: 0);
  }

  @override
  void dispose() {
    super.dispose();
    pageController.dispose();
  }

  void onPageChange(int page) {
    setState(() {
      currentPage = page;
    });
  }
}
