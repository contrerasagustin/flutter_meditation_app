import 'package:flutter/material.dart';
import 'package:flutter_meditation_app/src/View/home/widget/recent_button.dart';
import 'package:google_fonts/google_fonts.dart';

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
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Text(
            "Recientes",
            style: GoogleFonts.mukta(
              color: Colors.blue,
              fontSize: 20,
              fontWeight: FontWeight.bold,
              decoration: TextDecoration.underline,
              decorationColor: Colors.white,
              decorationThickness: 3,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 5),
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.35,
            child: ListView(
              children: const [
                RecentButton(
                  pri: Color.fromRGBO(20, 203, 149, 1),
                  sec: Color.fromARGB(255, 255, 255, 255),
                  icon: Icon(
                    Icons.self_improvement_sharp,
                    color: Colors.white,
                    size: 30,
                  ),
                  tit: "Sonidos Relajantes",
                ),
                RecentButton(
                  pri: Color.fromARGB(255, 20, 78, 203),
                  sec: Colors.white,
                  icon: Icon(
                    Icons.self_improvement_sharp,
                    color: Colors.white,
                    size: 30,
                  ),
                  tit: "Sonidos Relajantes",
                ),
                RecentButton(
                  pri: Color.fromARGB(255, 176, 203, 20),
                  sec: Colors.white,
                  icon: Icon(
                    Icons.self_improvement_sharp,
                    color: Colors.white,
                    size: 30,
                  ),
                  tit: "Sonidos Relajantes",
                ),
                RecentButton(
                  pri: Color.fromARGB(255, 176, 20, 203),
                  sec: Colors.white,
                  icon: Icon(
                    Icons.self_improvement_sharp,
                    color: Colors.white,
                    size: 30,
                  ),
                  tit: "Sonidos Relajantes",
                ),
                RecentButton(
                  pri: Color.fromARGB(255, 203, 20, 127),
                  sec: Colors.white,
                  icon: Icon(
                    Icons.self_improvement_sharp,
                    color: Colors.white,
                    size: 30,
                  ),
                  tit: "Sonidos Relajantes",
                ),
                RecentButton(
                  pri: Color.fromARGB(255, 203, 41, 20),
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
        )
        // ListView(

        //   children: [
        //     GridView.count(
        //       mainAxisSpacing: 5,
        //       crossAxisSpacing: 20,
        //       crossAxisCount: 2,
        //       children: const [
        //         RecentButton(
        //           pri: Color.fromRGBO(79, 172, 254, 1),
        //           sec: Color.fromRGBO(79, 172, 254, 1),
        //           icon: Icon(
        //             Icons.self_improvement_sharp,
        //             color: Colors.white,
        //             size: 30,
        //           ),
        //           tit: "Sonidos Relajantes",
        //         ),
        //         RecentButton(
        //           pri: Colors.black,
        //           sec: Colors.white,
        //           icon: Icon(
        //             Icons.self_improvement_sharp,
        //             color: Colors.white,
        //             size: 30,
        //           ),
        //           tit: "Sonidos Relajantes",
        //         ),
        //         RecentButton(
        //           pri: Colors.black,
        //           sec: Colors.white,
        //           icon: Icon(
        //             Icons.self_improvement_sharp,
        //             color: Colors.white,
        //             size: 30,
        //           ),
        //           tit: "Sonidos Relajantes",
        //         ),
        //         RecentButton(
        //           pri: Colors.black,
        //           sec: Colors.white,
        //           icon: Icon(
        //             Icons.self_improvement_sharp,
        //             color: Colors.white,
        //             size: 30,
        //           ),
        //           tit: "Sonidos Relajantes",
        //         ),
        //         RecentButton(
        //           pri: Colors.black,
        //           sec: Colors.white,
        //           icon: Icon(
        //             Icons.self_improvement_sharp,
        //             color: Colors.white,
        //             size: 30,
        //           ),
        //           tit: "Sonidos Relajantes",
        //         ),
        //         RecentButton(
        //           pri: Colors.black,
        //           sec: Colors.white,
        //           icon: Icon(
        //             Icons.self_improvement_sharp,
        //             color: Colors.white,
        //             size: 30,
        //           ),
        //           tit: "Sonidos Relajantes",
        //         ),
        //       ],
        //     ),
        //   ],
        // ),
      ],
    );
  }
}
