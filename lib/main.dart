import 'package:api_version_2/screens/main_page.dart';
import 'package:api_version_2/view_model/anime_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_)=>AnimeViewModel(),
      child: MaterialApp(
        theme: ThemeData(
          useMaterial3: true,
          primaryColor: Colors.indigoAccent
        ),
        home: const MainPage(),
      ),
    );
  }
}
