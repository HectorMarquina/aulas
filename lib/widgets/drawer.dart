import 'package:aulasapp/screens/biblioteca%20de%20videos/biblioteca_de_videos_screen.dart';
import 'package:aulasapp/screens/calendario/calendario_screen.dart';
import 'package:aulasapp/screens/eventos%20empresariales/eventos_empresariales.dart';
import 'package:aulasapp/screens/home/home_screen.dart';
import 'package:aulasapp/screens/mis%20certificados/mis_certificados_screen.dart';
import 'package:aulasapp/screens/mis%20eventos/mis_eventos_screen.dart';
import 'package:aulasapp/screens/mis%20pagos/mis_pagos_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../screens/perfil/perfil_screen.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: const BoxDecoration(
              color: Colors.blueGrey,
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
                  padding: const EdgeInsets.only(
                    left: 100,
                    right: 100,
                  ),
                  height: 68,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => PerfilScreen()),
                      );
                    },
                    child: const CircleAvatar(
                      radius: 100,
                      backgroundImage: NetworkImage(
                        'https://www.geekmi.news/__export/1619631525888/sites/debate/img/2021/04/28/luffy1.jpg_1339198940.jpg',
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
                  child: SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: Container(
                      margin: EdgeInsets.only(top: 0),
                      //color: Colors.black12,
                      child: Padding(
                        padding: EdgeInsets.only(left: 7),
                        child: Column(
                          children: const [
                            Text(
                              'Nombre',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            Text(
                              'Cargo comleto',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 19,
                  //color: Colors.amber,
                  child: Text(
                    'Virtual Forum CDK',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w100,
                        color: Colors.white),
                  ),
                )
              ],
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: const Text('Lobby'),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Home()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.calendar_today_outlined),
            title: const Text('Eventos Empresariales'),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => EventosEmpresarialesScreen()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.groups_outlined),
            title: const Text('Mis Eventos'),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const MisEventosScreen()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.handshake_outlined),
            title: const Text('Mis Pagos'),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const MisPagosScreen()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.contact_support_outlined),
            title: const Text('Mis Certificados'),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const MisCertificadosScreen()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.place_outlined),
            title: const Text('Calendario'),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const CalendarioScreen(),
                ),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.tag),
            title: const Text('Bilbioteca de Videos'),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const BibliotecaDeVideosScreen()),
              );
            },
          ),
        ],
      ),
    );
  }
}
