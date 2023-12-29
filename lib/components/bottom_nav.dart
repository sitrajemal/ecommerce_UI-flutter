import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

// ignore: must_be_immutable
class BottomNav extends StatelessWidget {
  void Function(int)? onTabChange;
  BottomNav({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Container(
    child: GNav(
      color: Colors.grey,
      activeColor: Colors.black,
      tabActiveBorder: Border.all(color: Colors.white),
      tabBackgroundColor: Colors.grey,
      mainAxisAlignment: MainAxisAlignment.center,
      onTabChange: (value) => onTabChange!(value) ,


      tabs:const [
   GButton(
    icon: Icons.home,
    text: 'Home',
   ),

   GButton(
    icon: Icons.shop_outlined,
    text: 'Cart',
   )



    ]),


    );
  }
}
