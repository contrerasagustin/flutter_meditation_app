import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_meditation_app/src/Logic/bloc/genres/genres_bloc.dart';
import 'package:flutter_meditation_app/src/View/home/widget/recommended_button.dart';

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
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          margin: const EdgeInsets.only(left: 10, top: 10),
          child: const Text(
            "Recomendados",
            style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.bold,
              decoration: TextDecoration.underline,
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
                            pri: Color.fromRGBO(161, 196, 253, 1),
                            sec: Color.fromRGBO(194, 233, 251, 1),
                            tit: "Causas de la depresion",
                            des: "Post semanal",
                          ),
                        ],
                      );
                    case Genres.Baby_Sleep:
                      return const ButtonBar(
                        children: [
                          RecommendedButton(
                            pri: Color.fromRGBO(132, 250, 176, 1),
                            sec: Color.fromRGBO(143, 211, 244, 1),
                            tit: "Canciones para dormir",
                            des: "Listo para dormir",
                          ),
                        ],
                      );
                    case Genres.Insomnia:
                      return const ButtonBar(
                        children: [
                          RecommendedButton(
                            pri: Color.fromRGBO(255, 154, 158, 1),
                            sec: Color.fromRGBO(250, 208, 196, 1),
                            tit: "Meditacion",
                            des: "Audio diario",
                          ),
                          RecommendedButton(
                            pri: Color.fromRGBO(132, 250, 176, 1),
                            sec: Color.fromRGBO(143, 211, 244, 1),
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
                            pri: Color.fromRGBO(255, 154, 158, 1),
                            sec: Color.fromRGBO(250, 208, 196, 1),
                            tit: "Meditacion",
                            des: "Audio diario",
                          ),
                          RecommendedButton(
                            pri: Color.fromRGBO(161, 196, 253, 1),
                            sec: Color.fromRGBO(194, 233, 251, 1),
                            tit: "Causas de la depresion",
                            des: "Post semanal",
                          ),
                          RecommendedButton(
                            pri: Color.fromRGBO(161, 140, 209, 1),
                            sec: Color.fromRGBO(251, 194, 235, 1),
                            tit: "Otros titulos",
                            des: "Mixes",
                          ),
                          RecommendedButton(
                            pri: Color.fromRGBO(132, 250, 176, 1),
                            sec: Color.fromRGBO(143, 211, 244, 1),
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
