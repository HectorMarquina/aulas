import 'package:aulasapp/screens/perfil/editar_perfil_screen.dart';
import 'package:aulasapp/screens/perfil/utils/user_preferences.dart';
import 'package:aulasapp/screens/perfil/widget/appbar_widget.dart';
import 'package:aulasapp/screens/perfil/widget/button_widget.dart';
import 'package:aulasapp/screens/perfil/widget/profile_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'model/user.dart';

class PerfilScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<PerfilScreen> {
  @override
  Widget build(BuildContext context) {
    final user = UserPreferences.myUser;

    return Builder(
      builder: (context) => Scaffold(
        // appBar: AppBar(
        //   elevation: 0,
        //   title: const Text('Perfil'),
        //   actions: [
        //     Padding(
        //       padding: const EdgeInsets.all(8.0),
        //       child: IconButton(
        //           onPressed: () {
        //             Navigator.of(context).push(
        //               MaterialPageRoute(
        //                   builder: (context) => EditProfilePage()),
        //             );
        //           },
        //           icon: Icon(Icons.edit_note_outlined)),
        //     )
        //   ],
        // ),
        body: Column(
          children: [
            SizedBox(
              height: 5,
            ),
            Expanded(
              child: ListView(
                physics: BouncingScrollPhysics(),
                children: [
                  ProfileWidget(
                    imagePath: user.imagePath,
                    onClicked: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (context) => EditProfilePage()),
                      );
                    },
                  ),
                  const SizedBox(height: 24),
                  buildName(user),
                  const SizedBox(height: 24),
                  Center(child: buildMisActividades()),
                  const SizedBox(height: 24),
                  buildAbout(user),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildName(User user) => Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                user.name,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                user.surname,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              ),
            ],
          ),
          const SizedBox(height: 4),
          Text(
            user.rol,
            style: TextStyle(color: Colors.grey),
          )
        ],
      );

  Widget buildMisActividades() => ButtonWidget(
        text: 'Mis Actividades',
        onClicked: () {},
      );

  Widget buildAbout(User user) => Container(
        padding: EdgeInsets.symmetric(horizontal: 48),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(
                  FontAwesomeIcons.book,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  'Biografía',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Text(
              user.about,
              style: TextStyle(fontSize: 16, height: 1.4),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Icon(
                  FontAwesomeIcons.locationDot,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  'Ciudad',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Text(
              user.city,
              style: TextStyle(fontSize: 16, height: 1.4),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Icon(
                  FontAwesomeIcons.pencil,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  'Experiencia',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Text(
              user.experience,
              style: TextStyle(fontSize: 16, height: 1.4),
            ),
          ],
        ),
      );
}
