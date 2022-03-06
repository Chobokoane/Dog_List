import 'package:dog_api/ui/views/widget/app_colors.dart';
import 'package:flutter/material.dart';

import 'my_router.dart';

void main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dog API List',
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: primaryColor,
        canvasColor: lightShadowColor,
      ),
      initialRoute: '/',
      onGenerateRoute: MyRouter.generateRoute,
    );
  }
}
