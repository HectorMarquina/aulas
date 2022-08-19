import 'package:aulasapp/screens/codigo_screen.dart';
import 'package:aulasapp/screens/login/login.dart';
import 'package:aulasapp/screens/perfil/widget/button_widget.dart';
import 'package:aulasapp/widgets/bottom_tab.dart';
import 'package:aulasapp/widgets/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color.fromRGBO(43, 152, 235, 1),
        backgroundColor: Colors.grey[100],
      ),
      title: "Aulas",
      home: Main(),
    ));
const darkColor = Color(0xFF49535C);

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var montserrat = const TextStyle(
      fontSize: 12,
    );
    final size = MediaQuery.of(context).size;
    final items = List<String>.generate(5, (i) => 'items $i');
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Image(
                image: AssetImage('assets/banner_app_bueno_estesi.png'),
                height: 140,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ListView.builder(
              padding: EdgeInsets.zero,
              shrinkWrap: true,
              physics: const BouncingScrollPhysics(),
              itemCount: items.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 24),
                        child: Container(
                          constraints: const BoxConstraints(maxWidth: 400),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 190,
                                child: Stack(
                                  children: [
                                    ClipPath(
                                      clipper: AvatarClipper(),
                                      child: Container(
                                        child: const FadeInImage(
                                          placeholder:
                                              AssetImage('assets/no-image.jpg'),
                                          image: const NetworkImage(
                                              'https://igniteonline.la/wp-content/uploads/2020/04/206-1080x675.jpg'),
                                          fit: BoxFit.fill,
                                        ),
                                        height: 150,
                                        width: size.width,
                                        decoration: const BoxDecoration(
                                          color: darkColor,
                                          borderRadius: BorderRadius.only(
                                            topRight: const Radius.circular(20),
                                            topLeft: const Radius.circular(20),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      left: 20,
                                      top: 115,
                                      child: Row(
                                        children: [
                                          const CircleAvatar(
                                            radius: 35,
                                            backgroundImage: NetworkImage(
                                                "https://asociacioneducar.com/sites/default/files/styles/node_main/public/field/image/web-%201694%20-%20copia.jpg?itok=ljjN2Nrg"),
                                          ),
                                          const SizedBox(width: 20),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                //color: Colors.amber,
                                                // width: 1,
                                                height: 35,
                                              ),
                                              Container(
                                                //color: Colors.amber,
                                                width: 160,
                                                child: const Text(
                                                  "Nombre del aula",
                                                  style: TextStyle(
                                                    fontSize: 22,
                                                    color: darkColor,
                                                  ),
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                ),
                                              ),
                                              const SizedBox(height: 8)
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.zero,
                                //color: Colors.amber,
                                child: Stack(children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                        //height: 45,
                                        //color: Colors.amber,
                                        child: ElevatedButton(
                                            style: ElevatedButton.styleFrom(
                                              //shadowColor: Colors.white,
                                              primary: Colors.white,
                                              elevation: 0,
                                              shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.only(
                                                  bottomLeft:
                                                      Radius.circular(20),
                                                ),
                                                // side: BorderSide(
                                                //     color: Colors.red),
                                              ),
                                              onPrimary: Colors.redAccent[100],
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 15,
                                                      vertical: 0),
                                            ),
                                            onPressed: () {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        const CodigoScreen()),
                                              );
                                            },
                                            child: Icon(
                                                Icons.delete_outline_outlined)),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                            side:
                                                BorderSide(color: Colors.blue),
                                          ),
                                          onPrimary: Colors.blue,
                                          primary: Colors.white,
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 32, vertical: 0),
                                        ),
                                        onPressed: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) => Splash()),
                                          );
                                        },
                                        child: const Text('Abrir'),
                                      ),
                                    ],
                                  ),
                                ]),
                              ),
                              //const SizedBox(height: 8)
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                  ],
                );
              },
            ),
            const SizedBox(
              height: 5,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0),
                  side: BorderSide(color: Colors.blue),
                ),
                onPrimary: Colors.blue,
                padding:
                    const EdgeInsets.symmetric(horizontal: 32, vertical: 0),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const CodigoScreen()),
                );
              },
              child: const Text('Código del Aula'),
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}

TextStyle buildMontserrat(
  Color color, {
  FontWeight fontWeight = FontWeight.normal,
}) {
  return TextStyle(
    fontSize: 18,
    color: color,
    fontWeight: fontWeight,
  );
}

class AvatarClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    return Path()
      ..lineTo(0, size.height)
      ..lineTo(18, size.height)
      ..arcToPoint(Offset(92, size.height), radius: const Radius.circular(1))
      ..lineTo(size.width, size.height)
      ..lineTo(size.width, 0)
      ..close();
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
