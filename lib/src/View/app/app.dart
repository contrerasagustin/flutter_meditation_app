import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_meditation_app/src/Logic/bloc/genres/genres_bloc.dart';
import 'package:flutter_meditation_app/src/Logic/bloc/navigation/navigation_bloc.dart';
import 'package:flutter_meditation_app/src/View/app/screen_app.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => GenresBloc(),
        ),
        BlocProvider(
          create: (_) => NavigationBloc(),
        )
      ],
      child: const ScreenApp(),
    );
  }
}
