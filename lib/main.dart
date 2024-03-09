import 'package:flutter/material.dart';
import 'package:food_app/pages/food_list/page.dart';
import 'package:food_app/pages/my_profile/widgets/historic.dart';
import 'package:food_app/pages/my_profile/widgets/payments.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Food App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "Roboto",
        primaryColor: const Color.fromARGB(255, 255, 4, 4),
        visualDensity: VisualDensity.adaptivePlatformDensity,
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xfffe724c))
            .copyWith(background: Color.fromARGB(255, 240, 240, 240)),
      ),
      home: const AppMainPage(),
    );
  }
}

class AppMainPage extends StatefulWidget {
  const AppMainPage({Key? key}) : super(key: key);

  @override
  _AppMainPageState createState() => _AppMainPageState();
}

class _AppMainPageState extends State<AppMainPage> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    const FoodListPage(),
    const Payments(),
    HistoryTab(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Conta',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.payment),
            label: 'Pagamento',
          ),
        ],
      ),
    );
  }
}
