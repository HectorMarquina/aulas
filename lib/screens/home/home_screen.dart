import 'package:aulasapp/screens/biblioteca%20de%20videos/biblioteca_de_videos_screen.dart';
import 'package:aulasapp/screens/calendario/calendario_screen.dart';
import 'package:aulasapp/screens/eventos%20empresariales/eventos_empresariales.dart';
import 'package:aulasapp/screens/home/second_screen.dart';
import 'package:aulasapp/screens/home/third_screen.dart';
import 'package:aulasapp/screens/mis%20certificados/mis_certificados_screen.dart';
import 'package:aulasapp/screens/mis%20eventos/mis_eventos_screen.dart';
import 'package:aulasapp/screens/mis%20pagos/mis_pagos_screen.dart';
import 'package:aulasapp/screens/notificaciones/notificaciones_screen.dart';
import 'package:aulasapp/screens/perfil/perfil_screen.dart';
import 'package:flutter/material.dart';
import 'CustomAnimatedBottomBar.dart';
import 'forth_screen.dart';
import 'home_screen copy.dart';
import 'home_screen.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Aulas',
      theme: ThemeData(
        backgroundColor: Colors.grey[100],
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Aulas'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

enum ScreenType {
  eventosEmpresarialesScreen,
  misPagos,
  misCertificados,
  home,
  misEventos,
  calendario,
  notificaciones,
  perfil,
  bibliotecaDeVideos,
}

class _MyHomePageState extends State<MyHomePage> {
  ScreenType _screenType = ScreenType.home;
  final _inactiveColor = Colors.grey;

  GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text(getTitle(_screenType)),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: const BoxDecoration(
                color: Color.fromRGBO(43, 152, 235, 1),
              ),
              child: Column(
                children: [
                  // Container(
                  //   color: Colors.amber,
                  //   height: 118,
                  //   padding: const EdgeInsets.only(
                  //     top: 15,
                  //     left: 100,
                  //     right: 100,
                  //   ),
                  //   child: const CircleAvatar(
                  //     radius: 110,
                  //     backgroundImage: NetworkImage(
                  //       'https://www.geekmi.news/__export/1619631525888/sites/debate/img/2021/04/28/luffy1.jpg_1339198940.jpg',
                  //     ),
                  //   ),
                  // ),
                  Container(
                    //color: Colors.amber,
                    height: 100,
                    child: GestureDetector(
                      onTap: () {
                        onTabTapped(ScreenType.perfil);
                      },
                      child: const CircleAvatar(
                        radius: 50,
                        backgroundImage: NetworkImage(
                          'https://i.pinimg.com/originals/c2/a3/2d/c2a32d4c38f1ebc4e657d0e356fceed0.png',
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => PerfilScreen()),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        margin: EdgeInsets.only(top: 0),
                        //color: Colors.black12,
                        child: Padding(
                          padding: EdgeInsets.only(left: 0),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Text(
                                    'Nico',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white),
                                    textAlign: TextAlign.center,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    'Robin',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: Icon(Icons.home_outlined),
              title: Text('Lobby'),
              onTap: () => onTabTapped(ScreenType.home),
            ),
            ListTile(
              leading: Icon(Icons.co_present_outlined),
              title: Text('Eventos Empresariales'),
              onTap: () => onTabTapped(ScreenType.eventosEmpresarialesScreen),
            ),
            ListTile(
              leading: Icon(Icons.co_present_outlined),
              title: Text('Mis Eventos'),
              onTap: () => onTabTapped(ScreenType.misEventos),
            ),
            ListTile(
              leading: Icon(Icons.co_present_outlined),
              title: Text('Mis Pagos'),
              onTap: () => onTabTapped(ScreenType.misPagos),
            ),
            ListTile(
              leading: Icon(Icons.co_present_outlined),
              title: Text('Mis Certificados'),
              onTap: () => onTabTapped(ScreenType.misCertificados),
            ),
            ListTile(
              leading: Icon(Icons.co_present_outlined),
              title: Text('Calendario'),
              onTap: () => onTabTapped(ScreenType.calendario),
            ),
            ListTile(
              leading: Icon(Icons.co_present_outlined),
              title: Text('Biblioteca de Videos'),
              onTap: () => onTabTapped(ScreenType.bibliotecaDeVideos),
            ),
          ],
        ),
      ),
      body: _body(_screenType),
      bottomNavigationBar: _buildBottomBar(),
    );
  }

  Widget _body(ScreenType screenType) {
    switch (screenType) {
      case ScreenType.eventosEmpresarialesScreen:
        return const EventosEmpresarialesScreen();
      case ScreenType.misPagos:
        return const MisPagosScreen();
      case ScreenType.misCertificados:
        return const MisCertificadosScreen();
      case ScreenType.home:
        return const HomeScreen();
      case ScreenType.misEventos:
        return const MisEventosScreen();
      case ScreenType.calendario:
        return const CalendarioScreen();
      case ScreenType.notificaciones:
        return const NotificacionesScreen();
      case ScreenType.perfil:
        return PerfilScreen();
      case ScreenType.bibliotecaDeVideos:
        return BibliotecaDeVideosScreen();
    }
  }

  Widget _buildBottomBar() {
    return CustomAnimatedBottomBar(
      backgroundColor: Colors.black,
      selectedIndex: _screenType,
      showElevation: true,
      itemCornerRadius: 24,
      curve: Curves.easeIn,
      onItemSelected: onTabTapped,
      items: <BottomNavyBarItem>[
        BottomNavyBarItem(
          screenType: ScreenType.home,
          icon: Icon(
            Icons.home_outlined,
            size: 30,
            color: Colors.white,
          ),
          title: Text(
            'Lobby',
            style: TextStyle(fontSize: 12),
          ),
          activeColor: Colors.white,
          inactiveColor: _inactiveColor,
          textAlign: TextAlign.center,
        ),
        BottomNavyBarItem(
          screenType: ScreenType.misEventos,
          icon: Icon(
            Icons.co_present_outlined,
            size: 30,
            color: Colors.white,
          ),
          title: Text(
            'Mis eventos',
            style: TextStyle(fontSize: 12),
          ),
          activeColor: Colors.white,
          inactiveColor: _inactiveColor,
          textAlign: TextAlign.center,
        ),
        BottomNavyBarItem(
          screenType: ScreenType.calendario,
          icon: Icon(
            Icons.calendar_today_outlined,
            size: 30,
            color: Colors.white,
          ),
          title: Text(
            'Calendario',
            style: TextStyle(fontSize: 12),
          ),
          activeColor: Colors.white,
          inactiveColor: _inactiveColor,
          textAlign: TextAlign.center,
        ),
        BottomNavyBarItem(
          screenType: ScreenType.notificaciones,
          icon: Icon(
            Icons.notifications_outlined,
            size: 30,
            color: Colors.white,
          ),
          title: Text(
            'Notificaciones',
            style: TextStyle(fontSize: 12),
          ),
          activeColor: Colors.white,
          inactiveColor: _inactiveColor,
          textAlign: TextAlign.center,
        ),
        BottomNavyBarItem(
          screenType: ScreenType.perfil,
          icon: Icon(
            Icons.perm_identity,
            size: 30,
            color: Colors.white,
          ),
          title: Text(
            'Perfil',
            style: TextStyle(fontSize: 12),
          ),
          activeColor: Colors.white,
          inactiveColor: _inactiveColor,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }

  void onTabTapped(ScreenType screenType) {
    if ((_scaffoldKey.currentState ?? ScaffoldState()).isDrawerOpen) {
      (_scaffoldKey.currentState ?? ScaffoldState()).openEndDrawer();
    }
    setState(() {
      _screenType = screenType;
    });
  }

  String getTitle(ScreenType screenType) {
    switch (screenType) {
      case ScreenType.eventosEmpresarialesScreen:
        return "Eventos empresariales";
      case ScreenType.misPagos:
        return "Mis pagos";
      case ScreenType.misCertificados:
        return "Mis certificados";
      case ScreenType.home:
        return "Lobby";
      case ScreenType.misEventos:
        return "Mis eventos";
      case ScreenType.calendario:
        return "Calendario";
      case ScreenType.notificaciones:
        return "Notificaciones";
      case ScreenType.perfil:
        return "Perfil";
      case ScreenType.bibliotecaDeVideos:
        return "Biblioteca de videos";
    }
  }
}
