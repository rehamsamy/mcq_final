import 'package:flutter/material.dart';
import 'package:mcq_final/helpler/core_classes/constants.dart';
import 'package:mcq_final/helpler/custom_widgets/app_text.dart';

class HomeTab extends StatefulWidget {
  const HomeTab({Key? key}) : super(key: key);

  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(200),
          child: Container(
            height: 120,
            child: Card(
                elevation: 10,
                color: kPurpleColor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)),
                child: Row(children: [
                  SizedBox(
                    width: 30,
                    height: 30,
                    child: Card(
                      elevation: 20,
                      color: kPurpleColor,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12)),
                      child: const Icon(
                        Icons.wifi,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const AppText('fffffffff'),
                ])),
          )),
      body: SingleChildScrollView(
        child: Column(
          children: const [],
        ),
      ),
    );
  }
}
