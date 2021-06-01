import 'package:flutter/material.dart';
import 'package:nice_counter_app/core/exception/route_exception.dart';
import 'package:nice_counter_app/01_counter/counter.dart';

class AppRouter {
  const AppRouter._();
  static const String counter = 'counter';

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case counter:
        return MaterialPageRoute(
          builder: (_) => const CounterPage(),
        );
      default:
        throw const RouteException('Route not found!');
    }
  }
}
