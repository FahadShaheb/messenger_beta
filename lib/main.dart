import 'package:flutter/material.dart';
import 'package:messenger_v1/controllers/welcome_controller.dart';
import 'package:messenger_v1/screens/available_users.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (ctx) => WelcomeRoomsState()),
      ],
      child: MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.red,
        ),
        home: HomePage(),
        routes: {},
      ),
    );
  }
}
