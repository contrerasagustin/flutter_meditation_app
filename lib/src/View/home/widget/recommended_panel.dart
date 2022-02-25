import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_meditation_app/src/Logic/bloc/genres/genres_bloc.dart';
import 'package:flutter_meditation_app/src/View/home/widget/recommended_button.dart';
import 'package:google_fonts/google_fonts.dart';

class RecommendedPanel extends StatefulWidget {
  const RecommendedPanel({Key? key}) : super(key: key);

  @override
  _RecommendedPanelState createState() => _RecommendedPanelState();
}

class _RecommendedPanelState extends State<RecommendedPanel> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.only(left: 10, top: 0),
          child: Text(
            "Recomendados",
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
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 0, vertical: 5),
          height: 150,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              BlocBuilder<GenresBloc, GenresState>(
                builder: (context, state) {
                  switch (state.genres) {
                    case Genres.Depression:
                      return const ButtonBar(
                        children: [
                          RecommendedButton(
                            pri: Color.fromRGBO(70, 52, 248, 1),
                            sec: Color.fromRGBO(124, 142, 243, 1),
                            tit: "Causas de la depresion",
                            des: "Post semanal",
                          ),
                        ],
                      );
                    case Genres.Baby_Sleep:
                      return const ButtonBar(
                        children: [
                          RecommendedButton(
                            pri: Color.fromARGB(255, 86, 250, 146),
                            sec: Color.fromARGB(255, 113, 203, 248),
                            tit: "Canciones para dormir",
                            des: "Listo para dormir",
                          ),
                        ],
                      );
                    case Genres.Insomnia:
                      return const ButtonBar(
                        children: [
                          RecommendedButton(
                            pri: Color.fromARGB(255, 235, 13, 20),
                            sec: Color.fromARGB(255, 226, 129, 129),
                            tit: "Meditacion",
                            des: "Audio diario",
                          ),
                          RecommendedButton(
                            pri: Color.fromARGB(255, 86, 250, 146),
                            sec: Color.fromARGB(255, 113, 203, 248),
                            tit: "Canciones para dormir",
                            des: "Listo para dormir",
                          ),
                        ],
                      );
                    case Genres.All:
                    default:
                      return const ButtonBar(
                        children: [
                          RecommendedButton(
                            pri: Color.fromARGB(255, 235, 13, 20),
                            sec: Color.fromARGB(255, 226, 129, 129),
                            tit: "Meditacion",
                            des: "Audio diario",
                          ),
                          RecommendedButton(
                            pri: Color.fromRGBO(70, 52, 248, 1),
                            sec: Color.fromRGBO(124, 142, 243, 1),
                            tit: "Causas de la depresion",
                            des: "Post semanal",
                          ),
                          RecommendedButton(
                            pri: Color.fromARGB(255, 113, 57, 245),
                            sec: Color.fromARGB(255, 205, 152, 255),
                            tit: "Otros titulos",
                            des: "Mixes",
                          ),
                          RecommendedButton(
                            pri: Color.fromARGB(255, 86, 250, 146),
                            sec: Color.fromARGB(255, 113, 203, 248),
                            tit: "Canciones para dormir",
                            des: "Listo para dormir",
                          ),
                        ],
                      );
                  }
                },
              )
            ],
          ),
        ),
      ],
    );
  }
}
