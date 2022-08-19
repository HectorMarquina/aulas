// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';

// class SignupScreen extends StatelessWidget {
//   static const routeName = '/signup-screen';

//   final emailController = TextEditingController();
//   final passwordController = TextEditingController();

//   Widget signUpWith(IconData icon) {
//     return Container(
//       height: 50,
//       width: 115,
//       decoration: BoxDecoration(
//         border: Border.all(color: Colors.grey.withOpacity(0.4), width: 1),
//         borderRadius: BorderRadius.circular(12),
//       ),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Icon(icon, size: 24),
//           TextButton(onPressed: () {}, child: Text('Registrarse')),
//         ],
//       ),
//     );
//   }

//   Widget userInput(TextEditingController userInput, String hintTitle,
//       TextInputType keyboardType) {
//     return Container(
//       height: 55,
//       margin: EdgeInsets.only(bottom: 15),
//       decoration: BoxDecoration(
//           color: Colors.blueGrey.shade200,
//           borderRadius: BorderRadius.circular(30)),
//       child: Padding(
//         padding: const EdgeInsets.only(left: 25.0, top: 15, right: 25),
//         child: TextField(
//           controller: userInput,
//           autocorrect: false,
//           enableSuggestions: false,
//           autofocus: false,
//           decoration: InputDecoration.collapsed(
//             hintText: hintTitle,
//             hintStyle: TextStyle(
//                 fontSize: 18,
//                 color: Colors.white70,
//                 fontStyle: FontStyle.italic),
//           ),
//           keyboardType: keyboardType,
//         ),
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         decoration: BoxDecoration(
//           image: DecorationImage(
//             alignment: Alignment.topCenter,
//             fit: BoxFit.fill,
//             image: NetworkImage(
//               'https://www.teahub.io/photos/full/246-2460189_full-hd-background-abstract-portrait.jpg',
//             ),
//           ),
//         ),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.end,
//           children: [
//             Container(
//               height: 510,
//               width: double.infinity,
//               decoration: BoxDecoration(
//                 color: Colors.white,
//                 borderRadius: BorderRadius.only(
//                     topLeft: Radius.circular(15),
//                     topRight: Radius.circular(15)),
//               ),
//               child: Padding(
//                 padding: const EdgeInsets.all(15.0),
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.spaceAround,
//                   crossAxisAlignment: CrossAxisAlignment.stretch,
//                   children: [
//                     SizedBox(height: 45),
//                     userInput(
//                         emailController, 'Email', TextInputType.emailAddress),
//                     userInput(passwordController, 'Password',
//                         TextInputType.visiblePassword),
//                     Container(
//                       height: 55,
//                       // for an exact replicate, remove the padding.
//                       // pour une réplique exact, enlever le padding.
//                       padding:
//                           const EdgeInsets.only(top: 5, left: 70, right: 70),
//                       child: RaisedButton(
//                         shape: RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(25)),
//                         color: Colors.indigo.shade800,
//                         onPressed: () {},
//                         child: Text(
//                           'Sign up',
//                           style: TextStyle(
//                             fontSize: 20,
//                             fontWeight: FontWeight.w700,
//                             color: Colors.white,
//                           ),
//                         ),
//                       ),
//                     ),
//                     SizedBox(height: 20),
//                     Center(
//                       child: Text('Forgot password ?'),
//                     ),
//                     SizedBox(height: 20),
//                     Padding(
//                       padding: const EdgeInsets.only(top: 25.0),
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                         children: [
//                           signUpWith(Icons.add),
//                           signUpWith(Icons.book_online),
//                         ],
//                       ),
//                     ),
//                     Divider(thickness: 0, color: Colors.white),
//                     /*
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     //Text('Don\'t have an account yet ? ', style: TextStyle(color: Colors.grey, fontStyle: FontStyle.italic),),
//                     TextButton(
//                     onPressed: () {},
//                     child: Text(
//                       'Sign Up',
//                       style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
//                     ),
//                   ),
//                   ],
//                 ),
//                   */
//                   ],
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

import '../../components/background.dart';
import '../login/login.dart';

class RegisterScreen extends StatefulWidget {
  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  bool value = false;
  bool value1 = false;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Background(
        child: Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  //color: Colors.amber,
                  height: size.height * .3,
                  child: Image.asset(
                    "assets/fachada_3.jpg",
                    width: size.width,
                    fit: BoxFit.cover,
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const SizedBox(
                      height: 30,
                    ),
                    const Text(
                      "Crear una cuenta",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey),
                    ),
                    SizedBox(height: size.height * 0.03),
                    Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.symmetric(horizontal: 40),
                      child: TextField(
                        decoration: InputDecoration(labelText: "Nombre"),
                      ),
                    ),
                    SizedBox(height: size.height * 0.03),
                    Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.symmetric(horizontal: 40),
                      child: TextField(
                        decoration: InputDecoration(labelText: "Apellido"),
                      ),
                    ),
                    SizedBox(height: size.height * 0.03),
                    Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.symmetric(horizontal: 40),
                      child: TextField(
                        decoration:
                            InputDecoration(labelText: "Correo electrónico"),
                      ),
                    ),
                    SizedBox(height: size.height * 0.03),
                    Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.symmetric(horizontal: 40),
                      child: TextField(
                        decoration: InputDecoration(labelText: "Contraseña"),
                        obscureText: true,
                      ),
                    ),
                    SizedBox(height: size.height * 0.03),
                    Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.symmetric(horizontal: 40),
                      child: TextField(
                        decoration:
                            InputDecoration(labelText: "Confirmar contraseña"),
                        obscureText: true,
                      ),
                    ),
                    SizedBox(height: size.height * 0.05),
                    Container(
                      alignment: Alignment.center,
                      margin:
                          EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                      child: RaisedButton(
                        onPressed: () {},
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(80.0)),
                        textColor: Colors.white,
                        padding: const EdgeInsets.all(0),
                        child: Container(
                          alignment: Alignment.center,
                          width: 250,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(50)),
                            color: Colors.indigo,
                            // gradient: LinearGradient(
                            //   begin: Alignment.centerLeft,
                            //   end: Alignment.centerRight,
                            //   colors: [
                            //     Color.fromRGBO(5, 21, 114, 1),
                            //     Color.fromRGBO(43, 152, 235, 1),
                            //     Color.fromRGBO(32, 247, 133, 1),
                            //   ],
                            // ),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(12.0),
                            child: Text(
                              'Registrarse',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 60,
                      //color: Colors.amber,
                      padding: EdgeInsets.zero,
                      margin: EdgeInsets.symmetric(horizontal: 40, vertical: 0),
                      child: Stack(
                        children: [
                          Positioned(
                            bottom: 18,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Checkbox(
                                  value: this.value1,
                                  onChanged: (value1) async {
                                    setState(() {
                                      this.value1 = value1!;
                                    });
                                  },
                                ),
                                Text(
                                  'Plíticas de privacidad',
                                  style: TextStyle(fontSize: 12.0),
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            top: 25,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Checkbox(
                                  value: this.value,
                                  onChanged: (value) async {
                                    setState(() {
                                      this.value = value!;
                                    });
                                  },
                                ),
                                Text(
                                  'Acepto los términos y condiciones',
                                  style: TextStyle(fontSize: 12.0),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      margin:
                          EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                      child: GestureDetector(
                        onTap: () => {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginScreen()))
                        },
                        child: Text(
                          "¿Ya tienes una cuenta?",
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF2661FA)),
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
