import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:solidsoftware_test_task/presentation/model/change_color_screen_model.dart';
import 'package:solidsoftware_test_task/presentation/screens/screens.dart';
import 'package:solidsoftware_test_task/ui/ui.dart';

/// The root widget of the application
class MyApp extends StatelessWidget {
  /// Creates widget
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: theme,
      home: ChangeNotifierProvider(
        create: (_) => ChangeColorScreenModel()..changeColor(),
        child: const ChangeColorScreen(),
      ),
    );
  }
}
