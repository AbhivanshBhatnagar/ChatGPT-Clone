import 'package:chatgpt_clone/home.dart';
import 'package:chatgpt_clone/pallete.dart';
import 'package:flutter/material.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "GPT Assistant",
      home: Home(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(useMaterial3: true)
          .copyWith(scaffoldBackgroundColor: Pallete.whiteColor),
    );
  }
}
