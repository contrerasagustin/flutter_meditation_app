import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_meditation_app/src/Logic/bloc/navigation/navigation_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: context.watch<NavigationBloc>().state.tabIndex,
      backgroundColor: const Color.fromARGB(255, 19, 21, 33),
      selectedLabelStyle: GoogleFonts.mukta(
        color: Colors.blue,
        fontSize: 15,
        fontWeight: FontWeight.bold,
      ),
      unselectedLabelStyle: GoogleFonts.mukta(
        color: Colors.white,
        fontSize: 15,
        fontWeight: FontWeight.bold,
      ),
      items: const [
        BottomNavigationBarItem(
            icon: Icon(
              Icons.music_note_outlined,
              color: Colors.white,
              size: 20,
            ),
            label: "Descubrir"),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.account_box_outlined,
              color: Colors.white,
            ),
            label: "Perfil"),
      ],
      onTap: (index) {
        context.read<NavigationBloc>().add(ChangeIndex(index));
      },
    );
    // return SizedBox(
    //   height: MediaQuery.of(context).size.height * 0.09,
    //   child:
    //   SalomonBottomBar(
    //     currentIndex: context.watch<NavigationBloc>().state.tabIndex,
    //     onTap: (index) {
    //       context.read<NavigationBloc>().add(ChangeIndex(index));
    //     },
    //     items: [
    //       /// Home
    //       SalomonBottomBarItem(
    //         icon: Icon(Icons.home),
    //         title: Text("Home"),
    //         selectedColor: Colors.purple,
    //       ),

    //       /// Likes
    //       SalomonBottomBarItem(
    //         icon: Icon(Icons.favorite_border),
    //         title: Text("Likes"),
    //         selectedColor: Colors.pink,
    //       ),

    //       /// Search
    //       SalomonBottomBarItem(
    //         icon: Icon(Icons.search),
    //         title: Text("Search"),
    //         selectedColor: Colors.orange,
    //       ),

    //       /// Profile
    //       SalomonBottomBarItem(
    //         icon: Icon(Icons.person),
    //         title: Text("Profile"),
    //         selectedColor: Colors.teal,
    //       ),
    //     ],
    //   ),
    // );
  }
}
