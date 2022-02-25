import 'package:flutter/material.dart';
import 'package:flutter_meditation_app/src/View/home/widget/recent_panel.dart';
import 'package:flutter_meditation_app/src/View/home/widget/recommended_panel.dart';
import 'package:flutter_meditation_app/src/View/home/widget/category_panel.dart';
import 'package:google_fonts/google_fonts.dart';

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
        color: const Color.fromARGB(255, 19, 21, 33),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 0,
                horizontal: 10,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("Descubrir",
                      style: GoogleFonts.mukta(
                        color: Colors.white,
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                      )),
                  const Icon(
                    Icons.search_rounded,
                    size: 40,
                    color: Colors.white,
                  ),
                ],
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
