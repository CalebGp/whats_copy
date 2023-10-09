import 'package:flutter/material.dart';
import 'package:whats_copy/screens/chats_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: ChatsPage());
  }
}
