import 'package:flutter/material.dart';
import 'package:mcq_final/screens/home/view/tabs/home_tab.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: double.infinity,
      decoration: const BoxDecoration(
          image: DecorationImage(
        image: AssetImage('assets/images/back.png'),
        fit: BoxFit.cover,
      )),
      child: PageView(
        controller: _pageController,
        children: const [
       HomeTab()
        ],
      ),
    ));
  }
}
