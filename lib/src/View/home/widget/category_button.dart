import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_meditation_app/src/Logic/bloc/genres/genres_bloc.dart';

class CategoryButton extends StatefulWidget {
  final Genres myGenres;
  final String myText;
  const CategoryButton({Key? key, required this.myGenres, required this.myText})
      : super(key: key);

  @override
  _CategoryButtonState createState() => _CategoryButtonState();
}

class _CategoryButtonState extends State<CategoryButton> {
  Color unselect = const Color.fromRGBO(37, 117, 252, 1);
  Color select = const Color.fromRGBO(106, 17, 203, 1);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => context.read<GenresBloc>().add(ChangeGenres(
          widget.myGenres)), //envio un evento para cambiar el estado
      child: Container(
        width: 100,
        decoration: BoxDecoration(
          color: (context.watch<GenresBloc>().state.genres == widget.myGenres)
              ? select
              : unselect,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Text(
            widget.myText,
            style: const TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
