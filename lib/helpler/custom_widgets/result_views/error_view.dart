import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:mcq_final/helpler/custom_widgets/app_text.dart';

class ErrorView extends StatelessWidget {
  final String errorMessage;
  final errorViewAsset = 'assets/json/error.json';

  const ErrorView({Key? key, required this.errorMessage}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        constraints: BoxConstraints(
          maxHeight: MediaQuery.of(context).size.height -
              MediaQuery.of(context).padding.top -
              kToolbarHeight,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
              fit: FlexFit.loose,
              child: Lottie.asset(
                errorViewAsset,
                repeat: false,
                width: 200,
                height: 200,
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: AppText(
                errorMessage,
                fontWeight: FontWeight.bold,
                centerText: true,
                color: Colors.white,
                maxLines: 100,
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
