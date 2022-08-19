import 'package:aulasapp/screens/login/login.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../widgets/bottom_tab.dart';

class CodigoScreen extends StatelessWidget {
  const CodigoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    void click() {}
    final size = MediaQuery.of(context).size;
    final items = List<String>.generate(5, (i) => 'items $i');
    return Scaffold(
      appBar: AppBar(
        title: Text('Aulas'),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                Color.fromARGB(255, 255, 255, 255),
                Color.fromARGB(255, 255, 255, 255),
                Color.fromARGB(255, 255, 255, 255),
              ])),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const SizedBox(
                height: 50,
              ),
              SizedBox(
                height: 200,
                width: 300,
                //child: LottieBuilder.asset("assets/lottie/login2.json"),
                child: Container(
                  //color: Colors.green,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.file_download_outlined,
                            color: Colors.blue,
                            size: 45,
                          ),
                          Text(
                            'Código de la Aula',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Text(
                        'introduce el código de invitación del Aula',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                //color: Colors.blue,
                width: 300,
                height: 60,
                child: const TextField(
                  decoration: InputDecoration(
                    // suffix: Icon(
                    //   FontAwesomeIcons.envelope,
                    //   color: Colors.red,
                    // ),

                    labelText: "Código",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                    ),
                  ),
                ),
              ),
              Container(
                width: 300,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                      //side: BorderSide(color: Colors.red),
                    ),
                    onPrimary: Colors.white,
                    padding: EdgeInsets.symmetric(horizontal: 32, vertical: 12),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const CodigoScreen()),
                    );
                  },
                  child: Text('Enviar'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
