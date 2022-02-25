import 'package:flutter/material.dart';
import 'package:flutter_meditation_app/src/View/home/widget/recent_button.dart';

class RecentPanel extends StatefulWidget {
  const RecentPanel({Key? key}) : super(key: key);

  @override
  State<RecentPanel> createState() => _RecentPanelState();
}

class _RecentPanelState extends State<RecentPanel> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text(
          "Recientes",
          style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.bold,
            decoration: TextDecoration.underline,
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 10),
          height: MediaQuery.of(context).size.height * 0.41,
          child: GridView.count(
            mainAxisSpacing: 5,
            crossAxisSpacing: 20,
            crossAxisCount: 2,
            children: const [
              RecentButton(
                pri: Color.fromRGBO(79, 172, 254, 1),
                sec: Color.fromRGBO(79, 172, 254, 1),
                icon: Icon(
                  Icons.self_improvement_sharp,
                  color: Colors.white,
                  size: 30,
                ),
                tit: "Sonidos Relajantes",
              ),
              RecentButton(
                pri: Colors.black,
                sec: Colors.white,
                icon: Icon(
                  Icons.self_improvement_sharp,
                  color: Colors.white,
                  size: 30,
                ),
                tit: "Sonidos Relajantes",
              ),
              RecentButton(
                pri: Colors.black,
                sec: Colors.white,
                icon: Icon(
                  Icons.self_improvement_sharp,
                  color: Colors.white,
                  size: 30,
                ),
                tit: "Sonidos Relajantes",
              ),
              RecentButton(
                pri: Colors.black,
                sec: Colors.white,
                icon: Icon(
                  Icons.self_improvement_sharp,
                  color: Colors.white,
                  size: 30,
                ),
                tit: "Sonidos Relajantes",
              ),
              RecentButton(
                pri: Colors.black,
                sec: Colors.white,
                icon: Icon(
                  Icons.self_improvement_sharp,
                  color: Colors.white,
                  size: 30,
                ),
                tit: "Sonidos Relajantes",
              ),
              RecentButton(
                pri: Colors.black,
                sec: Colors.white,
                icon: Icon(
                  Icons.self_improvement_sharp,
                  color: Colors.white,
                  size: 30,
                ),
                tit: "Sonidos Relajantes",
              ),
            ],
          ),
        ),
      ],
    );
  }
}
