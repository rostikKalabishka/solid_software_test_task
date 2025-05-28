import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:solidsoftware_test_task/presentation/screens/screens.dart';

import 'presentation/model/change_color_screen_model.dart';
import 'ui/ui.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: defaultTheme,
        home: ChangeNotifierProvider(
            create: (BuildContext context) =>
                ChangeColorScreenModel()..changeColor(),
            child: ChangeColorScreen()));
  }
}
