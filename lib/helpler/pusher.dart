
import 'package:flutter/material.dart';
import 'package:mcq_final/helpler/core_classes/app_theme.dart';
import 'package:mcq_final/main.dart';
import 'package:share/share.dart';

push(Widget child) {
  return Navigator.of(navigator.currentContext!).push(SlideRight(page: child));
}

pushBack() {
  return Navigator.of(navigator.currentContext!).pop();
}

pushReplacement(Widget child) {
  return Navigator.of(navigator.currentContext!)
      .pushReplacement(MaterialPageRoute(builder: (context) => child));
}

pushAndRemoveUntil(Widget child) {
  return Navigator.of(navigator.currentContext!).pushAndRemoveUntil(
      MaterialPageRoute(builder: (context) => child), (route) => false);
}

class SlideRight extends PageRouteBuilder {
  final page;
  SlideRight({this.page})
      : super(
          pageBuilder: (context, animation, secondaryAnimation) => page,
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return FadeTransition(
              opacity: animation,
              child: child,
            );
          },
        );
}

void shareApp() {
  Share.share(AppTheme.link);
}
