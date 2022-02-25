import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_meditation_app/src/Logic/bloc/navigation/navigation_bloc.dart';
import 'package:flutter_meditation_app/src/View/home/screen_home.dart';
import 'package:flutter_meditation_app/src/View/nav_bar/nav_bar.dart';

class ScreenApp extends StatefulWidget {
  const ScreenApp({Key? key}) : super(key: key);

  @override
  _ScreenAppState createState() => _ScreenAppState();
}

class _ScreenAppState extends State<ScreenApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Meditation APP',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Scaffold(
        bottomNavigationBar: NavBar(),
        body: Body(),
      ),
    );
  }
}

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NavigationBloc, NavigationState>(
      builder: (context, state) {
        switch (state.tabIndex) {
          case 0:
            return const ScreenHome();
          case 1:
            return Container(
              color: Colors.amber,
            );
          case 2:
            return Container(
              color: Colors.green,
            );
          case 3:
            return Container(
              color: Colors.lightBlue,
            );
        }
        return Container();
      },
    );
  }
}
