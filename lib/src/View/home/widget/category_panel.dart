import 'package:flutter/material.dart';
import 'package:flutter_meditation_app/src/Logic/bloc/genres/genres_bloc.dart';
import 'package:flutter_meditation_app/src/View/home/widget/category_button.dart';

class CategoryPanel extends StatefulWidget {
  const CategoryPanel({Key? key}) : super(key: key);

  @override
  _CategoryPanelState createState() => _CategoryPanelState();
}

class _CategoryPanelState extends State<CategoryPanel> {
  @override
  Widget build(BuildContext context) {
    return Container(
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
      height: 50,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: const [
          ButtonBar(
            buttonPadding: EdgeInsets.zero,
            children: [
              CategoryButton(
                myGenres: Genres.All,
                myText: "All",
              ),
              CategoryButton(
                myGenres: Genres.Insomnia,
                myText: "Insomnia",
              ),
              CategoryButton(
                myGenres: Genres.Depression,
                myText: "Depression",
              ),
              CategoryButton(
                myGenres: Genres.Baby_Sleep,
                myText: "Baby Sleep",
              ),
            ],
          ),
        ],
      ),
    );
  }
}
