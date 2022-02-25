import 'package:flutter/material.dart';

class RecommendedButton extends StatefulWidget {
  final Color pri, sec;
  final String tit, des;
  const RecommendedButton({
    Key? key,
    required this.pri,
    required this.sec,
    required this.tit,
    required this.des,
  }) : super(key: key);

  @override
  _RecommendedButtonState createState() => _RecommendedButtonState();
}

class _RecommendedButtonState extends State<RecommendedButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: <Color>[
              widget.pri,
              widget.sec,
            ],
          ),
          borderRadius: const BorderRadius.all(Radius.circular(30))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                widget.tit,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.none,
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
              Text(
                widget.des,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.none,
                  color: Colors.white,
                  fontSize: 15,
                ),
              ),
            ],
          ),
          const Icon(
            Icons.play_arrow_rounded,
            size: 50,
            color: Colors.white,
          )
        ],
      ),
    );
  }
}
