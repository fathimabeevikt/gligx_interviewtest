import 'package:flutter/material.dart';
import 'package:gligx_test/provider/user_provider.dart';
import 'package:gligx_test/screens/home.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (_) => UserProvider()),
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          fontFamily: 'Poppins',
          primarySwatch: Colors.blue,
        ),
        home: const Home());
  }
}
