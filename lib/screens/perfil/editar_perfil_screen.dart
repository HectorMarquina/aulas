import 'dart:io';

import 'package:aulasapp/screens/perfil/utils/user_preferences.dart';
import 'package:aulasapp/screens/perfil/widget/appbar_widget.dart';
import 'package:aulasapp/screens/perfil/widget/button_widget.dart';
import 'package:aulasapp/screens/perfil/widget/profile_widget.dart';
import 'package:aulasapp/screens/perfil/widget/textfield_password_widget.dart';
import 'package:aulasapp/screens/perfil/widget/textfield_widget.dart';
import 'package:flutter/material.dart';
import 'package:path/path.dart';

import 'model/user.dart';

class EditProfilePage extends StatefulWidget {
  @override
  _EditProfilePageState createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  User user = UserPreferences.myUser;

  @override
  Widget build(BuildContext context) => Builder(
        builder: (context) => Scaffold(
          appBar: AppBar(
            elevation: 0,
            title: const Text('Perfil'),
          ),
          body: Column(
            children: [
              SizedBox(
                height: 5,
              ),
              Expanded(
                child: ListView(
                  padding: EdgeInsets.symmetric(horizontal: 32),
                  physics: BouncingScrollPhysics(),
                  children: [
                    ProfileWidget(
                      imagePath: user.imagePath,
                      isEdit: true,
                      onClicked: () async {},
                    ),
                    const SizedBox(height: 24),
                    TextFieldWidget(
                      label: 'Nombre',
                      text: user.name,
                      onChanged: (name) {},
                    ),
                    const SizedBox(height: 24),
                    TextFieldWidget(
                      label: 'Apellido',
                      text: user.surname,
                      onChanged: (name) {},
                    ),
                    const SizedBox(height: 24),
                    TextFieldWidget(
                      label: 'Ciudad',
                      text: user.city,
                      maxLines: 1,
                      onChanged: (about) {},
                    ),
                    const SizedBox(height: 24),
                    TextFieldWidget(
                      label: 'Biografía',
                      text: user.about,
                      maxLines: 5,
                      onChanged: (about) {},
                    ),
                    const SizedBox(height: 24),
                    TextFieldWidget(
                      label: 'Experiencia',
                      text: user.experience,
                      maxLines: 3,
                      onChanged: (about) {},
                    ),
                    const SizedBox(height: 24),
                    TextFieldWidget(
                      label: 'Correo electrónico',
                      text: user.email,
                      maxLines: 1,
                      onChanged: (about) {},
                    ),
                    const SizedBox(height: 24),
                    TextFieldPasswordWidget(
                      label: 'Contraseña',
                      text: user.password,
                      maxLines: 1,
                      onChanged: (about) {},
                    ),
                    const SizedBox(height: 24),
                    TextFieldPasswordWidget(
                      label: 'Confirmar contraseña',
                      text: '',
                      maxLines: 1,
                      onChanged: (about) {},
                    ),
                    const SizedBox(height: 24),
                    buildMisActividades(),
                    const SizedBox(height: 24),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
}

Widget buildMisActividades() => ButtonWidget(
      text: 'Guardar',
      onClicked: () {},
    );
