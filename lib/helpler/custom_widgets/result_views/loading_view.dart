import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoadingView extends StatelessWidget {
  const LoadingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
          maxHeight:
              MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top - kToolbarHeight),
      child: Column(
        children: const [
          Flexible(
            fit: FlexFit.tight,
            child: Center(
              child: CircularProgressIndicator.adaptive(),
            ),
          ),
        ],
      ),
    );
  }
}
