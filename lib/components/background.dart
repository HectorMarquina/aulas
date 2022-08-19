import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final Widget child;

  const Background({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: size.height,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          // Positioned(
          //   top: 0,
          //   //right: 0,
          //   child: Container(
          //     color: Colors.amber,
          //     height: size.height * .3,
          //     child: Image.asset(
          //       "assets/fachada_3.jpg",
          //       width: size.width,
          //       fit: BoxFit.cover,
          //     ),
          //   ),
          // ),
          // Positioned(
          //   top: 0,
          //   right: 0,
          //   child: Image.asset("assets/top2.png", width: size.width),
          // ),
          // Positioned(
          //   top: 70,
          //   right: 20,
          //   child: Image.asset("assets/miaula.png", width: size.width * 0.35),
          // ),
          Positioned(
            bottom: 0,
            right: 0,
            child: Image.asset("assets/bottom1.png", width: size.width),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: Image.asset("assets/bottom2.png", width: size.width),
          ),
          child
        ],
      ),
    );
  }
}
