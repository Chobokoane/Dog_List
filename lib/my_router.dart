import 'package:dog_api/core/helper/model/dog_model.dart';
import 'package:dog_api/ui/views/detail_view.dart';
import 'package:dog_api/ui/views/home_view.dart';
import 'package:dog_api/ui/views/widget/form_widget.dart';
import 'package:flutter/material.dart';

class MyRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case "/":
        return MaterialPageRoute(builder: (_) => HomeView());
      case "details":
        var dogDto = settings.arguments as DogModel;
        return MaterialPageRoute(builder: (_) => DetailPage(dogDto));
      case "form":
        return MaterialPageRoute(builder: (_) => const FormWidget());
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
              body: Center(
                child: Text('No route defined for ${settings.name}'),
              ),
            ));
    }
  }
}