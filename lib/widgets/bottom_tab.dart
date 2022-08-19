import 'package:aulasapp/screens/calendario/calendario_screen.dart';
import 'package:aulasapp/screens/mis%20eventos/mis_eventos_screen.dart';
import 'package:aulasapp/screens/notificaciones/notificaciones_screen.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

import '../screens/home/home_screen.dart';
import '../screens/perfil/perfil_screen.dart';

class BottomTab extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomTab> {
  int _page = 0;
  final GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();
  int currentIndex = 0;
  final screens = [
    MisEventosScreen(),
    CalendarioScreen(),
    Home(),
    NotificacionesScreen(),
    PerfilScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        key: _bottomNavigationKey,
        index: 0,
        height: 60.0,
        items: <Widget>[
          Icon(
            Icons.co_present_outlined,
            size: 30,
            color: Colors.blueAccent,
          ),
          Icon(
            Icons.calendar_today_outlined,
            size: 30,
            color: Colors.blueAccent,
          ),
          Icon(
            Icons.home_outlined,
            size: 30,
            color: Colors.blueAccent,
          ),
          Icon(
            Icons.notifications_outlined,
            size: 30,
            color: Colors.blueAccent,
          ),
          Icon(
            Icons.perm_identity,
            size: 30,
            color: Colors.blueAccent,
          ),
        ],
        color: Colors.white,
        buttonBackgroundColor: Colors.white,
        backgroundColor: Colors.blueAccent,
        animationCurve: Curves.easeInOut,
        animationDuration: Duration(milliseconds: 600),
        onTap: (index) {
          setState(() {
            _page = index;
            currentIndex = index;
          });
        },
        letIndexChange: (index) => true,
      ),
      body: screens[currentIndex],
    );
  }
}
