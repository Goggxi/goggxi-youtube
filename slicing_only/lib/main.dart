import 'package:flutter/material.dart';
import 'package:slicing_only/ngulik_widgets/reorderable_listview/reorderable_listview.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: ReorderableListViewScreen());
  }
}
