import 'package:flutter/material.dart';
import 'package:getdatas/controllers/provider.dart';
import 'package:getdatas/services/servi.dart';
import 'package:getdatas/view/homepage/homepage.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => ProviderGet(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Homepage(),
      ),
    );
  }
}
