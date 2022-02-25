import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RecentButton extends StatefulWidget {
  final Color pri, sec;
  final String tit;
  final Icon icon;
  const RecentButton({
    Key? key,
    required this.pri,
    required this.sec,
    required this.tit,
    required this.icon,
  }) : super(key: key);

  @override
  State<RecentButton> createState() => _RecentButtonState();
}

class _RecentButtonState extends State<RecentButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.8,
        height: MediaQuery.of(context).size.height * 0.1,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: <Color>[
              widget.pri,
              widget.sec,
            ],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.tit,
                style: GoogleFonts.mukta(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              widget.icon,
              // Icon(
              //   color: Colors.white,
              //   size: 30,
              // )
            ],
          ),
        ),
      ),
    );
  }
}
