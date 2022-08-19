import '../model/user.dart';

class UserPreferences {
  static const myUser = User(
      imagePath:
          'https://i.pinimg.com/originals/c2/a3/2d/c2a32d4c38f1ebc4e657d0e356fceed0.png',
      name: 'Nico',
      surname: 'Robin',
      rol: 'Participant',
      about:
          'Nico Robin es un personaje ficticio de la serie manga y anime One Piece. Es la séptima integrante de la tripulación de los Piratas de Sombrero de Paja, teniendo el puesto de arqueóloga, y fue anteriormente la Vice-Presidenta de la organización criminal Baroque Works.',
      city: 'Tokio',
      experience: 'Diseño en aplicaiones móviles en Flutter',
      isDarkMode: false,
      email: 'nico.robin@gmail.com',
      password: 'nicorobin123');
}
