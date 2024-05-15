import 'package:bdki_landing/screen/account_screen.dart';
import 'package:bdki_landing/screen/home_screen.dart';
import 'package:bdki_landing/themes/colors.dart';
import 'package:flutter/material.dart';

class BottomNavbar extends StatefulWidget {
  const BottomNavbar({super.key});

  @override
  State<BottomNavbar> createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {
  int _selectedPageIndex = 0;

  final _pageOptions = <Widget>[
    const HomeScreen(),
    const AccountScreen(),
  ];

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pageOptions.elementAt(_selectedPageIndex),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.white,
        child: ClipOval(
      child: Image.asset('assets/images/img_qris.png', fit: BoxFit.fill,)
    ),
      ),
      bottomNavigationBar: BottomAppBar(
        height: 48.0,
        color: Colors.white,
        shape: CircularNotchedRectangle(),
        notchMargin: 6.0,
        clipBehavior: Clip.antiAlias,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(Icons.home_filled, color: darkOrange,),
            Icon(Icons.account_circle),
          ],
        )
      ),
    );
  }
}
