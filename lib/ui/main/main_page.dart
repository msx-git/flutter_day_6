import 'package:flutter/material.dart';
import '/ui/ui_1/ui_1.dart';
import '/ui/ui_2/ui_2.dart';
import '/ui/ui_3/ui_3.dart';

import 'widgets/menu_item.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Flutter Day 6'), centerTitle: true),
      body: const Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          MenuItem(number: '1', title: 'Filter Menu', navigateTo: Ui1()),
          MenuItem(number: '2', title: 'Chat', navigateTo: Ui2()),
          MenuItem(number: '3', title: 'Chat Details', navigateTo: Ui3()),
        ],
      ),
    );
  }
}
