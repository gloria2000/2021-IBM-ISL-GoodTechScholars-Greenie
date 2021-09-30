import 'package:flutter/material.dart';

class GreenieTheme{
  final primaryColor = Color(0xff088A3F);
  final secondaryColor = Color(0xffE5E5E5);
  final bgColor = Colors.white;

}


class NavBar extends StatelessWidget {
  var greenieTheme = GreenieTheme();
  NavBar({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: 1,
      backgroundColor: greenieTheme.primaryColor,
      type: BottomNavigationBarType.fixed,
      items: [
        BottomNavigationBarItem(
          icon: Image.asset('assets/icons/events.png'),
          label: " ",
        ),
        BottomNavigationBarItem(
          icon:  Image.asset('assets/icons/notif.png'),
          label: "",
        ),
        BottomNavigationBarItem(
          icon:  Image.asset('assets/icons/feeds.png'),
          label: " ",
        ),
        BottomNavigationBarItem(
          icon:  Image.asset('assets/icons/Vectorsearch.png'),
          label: " ",
        ),
        BottomNavigationBarItem(
          icon:  Image.asset('assets/icons/profile.png'),
          label: " ",
        ),  
      ],
    );
  }
}
