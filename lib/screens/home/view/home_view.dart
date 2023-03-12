import 'package:flutter/material.dart';
class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);
  @override
  State<HomeView> createState() => _HomeViewState();
}
class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Container(
        height: double.infinity,
        decoration: const BoxDecoration(
        image: DecorationImage(
        image: AssetImage('assets/images/back.png'),
    fit: BoxFit.cover,
    )),
      )
    );
  }
}
