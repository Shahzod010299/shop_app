import 'package:flutter/material.dart';
import 'package:uzum/components/constants/AppImages.dart';
import 'package:uzum/components/constants/mediaquery.dart';
import 'package:uzum/pages/home/tab/account_page.dart';
import 'package:uzum/pages/home/tab/favs_page.dart';
import 'package:uzum/pages/home/tab/home_page.dart';
import 'package:uzum/pages/home/tab/search_page.dart';
import 'package:uzum/pages/home/tab/shoppingBasketPage.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    List pages = [
      const HomePage(),
      const SearchPage(),
      const ShoppingBacketPage(),
      const FavsPage(),
      const AccountPage()
    ];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          (currentPage == 0)
              ? Container(
                  child: Center(
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      width: m_w(context).toDouble(),
                      height: m_w(context) * 0.1,
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: Colors.grey.withOpacity(0.3),
                        ),
                        child: const TextField(
                          cursorWidth: 4,
                          decoration: InputDecoration(
                            hintText: 'Mahsulot izlash ...',
                            icon: Icon(Icons.search),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              : Container()
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentPage,
        onTap: (value) {
          setState(() {
            currentPage = value;
          });
        },
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
              icon: Image.asset(
                AppImages.logo,
                color: Colors.grey,
                height: 20,
              ),
              label: 'Home'),
          const BottomNavigationBarItem(
              icon: Icon(Icons.search), label: 'Search'),
          const BottomNavigationBarItem(
              icon: Icon(Icons.shopping_basket), label: 'Backet'),
          const BottomNavigationBarItem(
              icon: Icon(Icons.favorite_outline), label: 'Saved'),
          const BottomNavigationBarItem(
              icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
      body: pages[currentPage],
    );
  }
}
