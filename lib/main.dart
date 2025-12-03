import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:jerry_store/screens/epsiode/EpisodeScreen.dart';
import 'package:jerry_store/screens/jerry_store/tom_store.dart';
import 'package:jerry_store/screens/profile/Profile.dart';
import 'package:jerry_store/screens/tom_kitchen/Tom_kitchen.dart';
import 'package:jerry_store/theme/ColorsManager.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int selectedIndex = 0;

  final List<Widget> listWidget = [
    TomStore(),
    TomKitchen(),
    EpisodeScreen(),
    Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        splashFactory: NoSplash.splashFactory,
        highlightColor: Colors.transparent,
        appBarTheme: const AppBarTheme(
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: Colors.transparent,
            statusBarIconBrightness: Brightness.dark,
          ),
        ),
      ),
      home: Scaffold(
        body: SafeArea(child: listWidget[selectedIndex]),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: selectedIndex,
          backgroundColor: ColorManager.blue,
          selectedItemColor: Colors.white,
          showUnselectedLabels: false,
          showSelectedLabels: true,
          selectedLabelStyle: TextStyle(fontSize: 12, height: 1.8),
          elevation: 30,
          items: const [
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage('lib/theme/images/shopping_cart.png'),
                size: 24,
                color: Colors.white,
              ),
              label: 'Store',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage('lib/theme/images/kitchen.png'),
                size: 24,
                color: Colors.white,
              ),
              label: 'Kitchen',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage('lib/theme/images/film.png'),
                size: 24,
                color: Colors.white,
              ),
              label: 'Episode',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage('lib/theme/images/user.png'),
                size: 24,
                color: Colors.white,
              ),
              label: 'Profile',
            ),
          ],
          onTap: (val) {
            setState(() {
              selectedIndex = val;
            });
          },
        ),
      ),
    );
  }
}
