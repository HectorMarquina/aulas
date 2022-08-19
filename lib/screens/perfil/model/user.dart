class User {
  final String imagePath;
  final String name;
  final String surname;
  final String rol;
  final String about;
  final String city;
  final String experience;
  final bool isDarkMode;
  final String email;
  final String password;

  const User(
      {required this.imagePath,
      required this.name,
      required this.surname,
      required this.rol,
      required this.about,
      required this.city,
      required this.experience,
      required this.isDarkMode,
      required this.email,
      required this.password});
}
