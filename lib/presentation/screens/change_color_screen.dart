import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'package:solidsoftware_test_task/presentation/model/change_color_screen_model.dart';

class ChangeColorScreen extends StatelessWidget {
  const ChangeColorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final model = context.watch<ChangeColorScreenModel>();
    final theme = Theme.of(context);
    return GestureDetector(
      onTap: () => model.changeColor(),
      child: Scaffold(
        body: AnimatedContainer(
          duration: Duration(milliseconds: 1500),
          color: model.backgroundColor,
          child: Center(
            child: Text(
              'Hello there',
              style: theme.textTheme.displayMedium
                  ?.copyWith(color: model.textColor),
            ),
          ),
        ),
      ),
    );
  }
}
