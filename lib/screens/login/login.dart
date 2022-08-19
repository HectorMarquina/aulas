import 'package:aulasapp/components/background.dart';
import 'package:aulasapp/screens/home/home_screen.dart';
import 'package:aulasapp/widgets/bottom_tab.dart';
import 'package:aulasapp/widgets/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../signup/signup_screen.dart';

class LoginScreen extends StatelessWidget {
  void click() {}
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Background(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.zero,
                //color: Colors.amber,
                height: size.height * .3,
                child: Image.asset(
                  "assets/fachada_3.jpg",
                  width: size.width,
                  fit: BoxFit.cover,
                ),
              ),
              // Container(
              //   //color: Colors.amberAccent,
              //   height: 150,
              //   width: 300,
              //   //child: LottieBuilder.asset("assets/lottie/loginScreen2.json"),
              //   child: Expanded(
              //     child: FadeInImage(
              //       placeholder: const AssetImage('assets/no-image.jpg'),
              //       image: NetworkImage(
              //           'https://img.freepik.com/vector-gratis/nota-papel-sobre-fondo-memphis_53876-99285.jpg?w=2000'),
              //       height: 150,
              //       width: 110,
              //       fit: BoxFit.cover,
              //     ),
              //   ),
              // ),
              const SizedBox(
                height: 30,
              ),
              Container(
                width: 325,
                height: 500,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 30,
                    ),
                    const Text(
                      "Iniciar Sesión",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey),
                    ),
                    // const SizedBox(
                    //   height: 10,
                    // ),
                    // const Text(
                    //   "Please LoginScreen to Your Account",
                    //   style: TextStyle(
                    //     color: Colors.grey,
                    //     fontSize: 15,
                    //   ),
                    // ),
                    const SizedBox(
                      height: 30,
                    ),
                    Container(
                      width: 260,
                      height: 60,
                      child: const TextField(
                        decoration: InputDecoration(
                            // suffix: Icon(
                            //   FontAwesomeIcons.envelope,
                            //   color: Colors.red,
                            // ),
                            suffixIcon: Icon(
                              FontAwesomeIcons.envelope,
                            ),
                            labelText: "Correo electrónico",
                            border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8)),
                            )),
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Container(
                      width: 260,
                      height: 60,
                      child: const TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                            // suffix: Icon(
                            //   FontAwesomeIcons.eyeSlash,
                            //   color: Colors.red,
                            // ),
                            suffixIcon: Icon(
                              FontAwesomeIcons.eyeSlash,
                            ),
                            labelText: "Contraseña",
                            border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8)),
                            )),
                      ),
                    ),
                    Container(
                      alignment: Alignment.centerRight,
                      margin:
                          EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                      child: Text(
                        "Olvidé mi contraseña",
                        style:
                            TextStyle(fontSize: 12, color: Color(0XFF2661FA)),
                      ),
                    ),

                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Home()),
                        );
                      },
                      child: Container(
                        alignment: Alignment.center,
                        width: 250,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                          color: Colors.indigo,
                          // gradient: LinearGradient(
                          //     begin: Alignment.centerLeft,
                          //     end: Alignment.centerRight,
                          //     colors: [
                          //       Color.fromRGBO(5, 21, 114, 1),
                          //       Color.fromRGBO(43, 152, 235, 1),
                          //       Color.fromRGBO(32, 247, 133, 1),
                          //     ],),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(12.0),
                          child: Text(
                            'Acceder',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 14,
                    ),
                    const Text(
                      "O ingresa con una red social",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.grey),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                            onPressed: click,
                            icon: const Icon(FontAwesomeIcons.google,
                                color: Colors.grey)),
                        IconButton(
                            onPressed: click,
                            icon: const Icon(FontAwesomeIcons.linkedinIn,
                                color: Colors.grey))
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => RegisterScreen()));
                      },
                      child: const Text(
                        "¿Aún no tienes una cuenta? Regístrate aquí.",
                        style: TextStyle(
                          color: Colors.blueAccent,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}



// import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// import '../../components/background.dart';
// import '../signup/signup_screen.dart';

// class LoginScreen extends StatelessWidget {
//   void click() {}
//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;

//     return Scaffold(
//       body: Background(
//         child: SingleChildScrollView(
//           child: Container(
//             height: MediaQuery.of(context).size.height,
//             width: MediaQuery.of(context).size.width,
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: <Widget>[
//                 Container(
//                   //color: Colors.blue,
//                   height: 150,
//                   width: 300,
//                   //child: LottieBuilder.asset("assets/lottie/loginScreen2.json"),
//                   child: FadeInImage(
//                     placeholder: const AssetImage('assets/no-image.jpg'),
//                     image: NetworkImage(
//                         'https://img.freepik.com/free-vector/colorful-palm-silhouettes-background_23-2148541792.jpg?w=2000'),
//                     height: 120,
//                     width: 110,

//                     //fit: BoxFit.cover,
//                   ),
//                 ),
//                 SizedBox(height: 20),
//                 Container(
//                   alignment: Alignment.centerLeft,
//                   padding: EdgeInsets.symmetric(horizontal: 40),
//                   child: Text(
//                     "Iniciar Sesión",
//                     style: TextStyle(
//                         fontWeight: FontWeight.bold,
//                         color: Color(0xFF2661FA),
//                         fontSize: 36),
//                     textAlign: TextAlign.left,
//                   ),
//                 ),
//                 SizedBox(height: size.height * 0.03),
//                 Container(
//                   alignment: Alignment.center,
//                   margin: EdgeInsets.symmetric(horizontal: 40),
//                   child: TextField(
//                     decoration:
//                         InputDecoration(labelText: "Correo electrónico"),
//                   ),
//                 ),
//                 SizedBox(height: size.height * 0.03),
//                 Container(
//                   alignment: Alignment.center,
//                   margin: EdgeInsets.symmetric(horizontal: 40),
//                   child: TextField(
//                     decoration: InputDecoration(labelText: "Contraseña"),
//                     obscureText: true,
//                   ),
//                 ),
//                 Container(
//                   alignment: Alignment.centerRight,
//                   margin: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
//                   child: Text(
//                     "Olvidé mi contraseña",
//                     style: TextStyle(fontSize: 12, color: Color(0XFF2661FA)),
//                   ),
//                 ),
//                 Container(
//                   alignment: Alignment.centerRight,
//                   margin: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
//                   child: GestureDetector(
//                     onTap: () => {
//                       Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                               builder: (context) => RegisterScreen()))
//                     },
//                     child: Text(
//                       "¿Aún no tienes una cuenta?",
//                       style: TextStyle(
//                           fontSize: 12,
//                           fontWeight: FontWeight.bold,
//                           color: Color(0xFF2661FA)),
//                     ),
//                   ),
//                 ),
//                 SizedBox(height: size.height * 0.01),
//                 Container(
//                   alignment: Alignment.center,
//                   margin: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
//                   child: RaisedButton(
//                     onPressed: () {},
//                     shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(80.0)),
//                     textColor: Colors.white,
//                     padding: const EdgeInsets.all(0),
//                     child: Container(
//                       alignment: Alignment.center,
//                       height: 50.0,
//                       width: size.width * 0.5,
//                       decoration: new BoxDecoration(
//                           borderRadius: BorderRadius.circular(80.0),
//                           gradient: new LinearGradient(colors: [
//                             Color.fromARGB(255, 255, 136, 34),
//                             Color.fromARGB(255, 255, 177, 41)
//                           ])),
//                       padding: const EdgeInsets.all(0),
//                       child: Text(
//                         "Ingresar",
//                         textAlign: TextAlign.center,
//                         style: TextStyle(fontWeight: FontWeight.bold),
//                       ),
//                     ),
//                   ),
//                 ),
//                 const SizedBox(
//                   height: 15,
//                 ),
//                 Container(
//                   alignment: Alignment.center,
//                   margin: EdgeInsets.symmetric(horizontal: 40),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.end,
//                     children: [
//                       IconButton(
//                           onPressed: click,
//                           icon: const Icon(FontAwesomeIcons.google,
//                               color: Colors.grey)),
//                       IconButton(
//                           onPressed: click,
//                           icon: const Icon(FontAwesomeIcons.linkedinIn,
//                               color: Colors.grey))
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
