import 'package:flutter/material.dart';
import 'package:flutter_meditation_app/src/View/home/widget/recent_panel.dart';
import 'package:flutter_meditation_app/src/View/home/widget/recommended_panel.dart';
import 'package:flutter_meditation_app/src/View/home/widget/category_panel.dart';

class ScreenHome extends StatefulWidget {
  const ScreenHome({Key? key}) : super(key: key);

  @override
  _ScreenHomeState createState() => _ScreenHomeState();
}

class _ScreenHomeState extends State<ScreenHome> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: <Color>[
                    Color.fromRGBO(48, 207, 208, 1),
                    Color.fromRGBO(51, 8, 103, 1),
                  ],
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 0,
                  horizontal: 10,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Text(
                      "Discover",
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.bold),
                    ),
                    Icon(
                      Icons.search,
                      size: 40,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
            ),
            const CategoryPanel(),
            const RecommendedPanel(),
            const RecentPanel(),
          ],
        ),
      ),
    );
  }
}
