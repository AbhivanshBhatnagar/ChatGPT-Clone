import 'package:chatgpt_clone/app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

Future main() async {
  await dotenv.load(fileName: "lib/.env");
  runApp(const App());
}
