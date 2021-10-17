import 'package:flutter/material.dart';
import 'package:learn_flutter/config/routes/models.dart';
import 'package:learn_flutter/screens/home.dart';
import 'package:learn_flutter/screens/second.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute<Home>(
            builder: (BuildContext context) =>
                const Home(title: 'Learn Flutter'));
      case '/second':
        final SecondPageArguments args =
            settings.arguments as SecondPageArguments;
        return MaterialPageRoute<SecondPage>(
          builder: (BuildContext context) => SecondPage(title: args.title),
        );
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute<Scaffold>(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Error'),
        ),
        body: const Center(
          child: Text('ERROR'),
        ),
      );
    });
  }
}
