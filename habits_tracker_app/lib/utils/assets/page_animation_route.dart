import 'package:flutter/cupertino.dart';

class PageAnimationRoute extends PageRouteBuilder {
  final Widget widget;
  final double ejex;
  final double ejey;

  PageAnimationRoute(
      {required this.widget, required this.ejex, required this.ejey})
      : super(
            transitionDuration: const Duration(milliseconds: 400),
            transitionsBuilder: (BuildContext context,
                Animation<double> animation,
                Animation<double> secAnimation,
                Widget child) {
              animation =
                  CurvedAnimation(parent: animation, curve: Curves.easeOutBack);
              return ScaleTransition(
                alignment: Alignment(ejex, ejey),
                scale: animation,
                child: child,
              );
            },
            pageBuilder: (
              BuildContext context,
              Animation<double> animation,
              Animation<double> secAnimation,
            ) {
              return widget;
            });
}
