import 'package:flutter/material.dart';
import 'package:namfisa/const/colors.dart';
import 'package:namfisa/presentation/widgets/line_widget.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //first container
          SingleChildScrollView(
            physics: const NeverScrollableScrollPhysics(),
            scrollDirection: Axis.horizontal,
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 300,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  //TODO:NAVBAR
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        'assets/images/logo.png',
                        width: 150,
                        height: 100,
                      ),
                      const SizedBox(
                        width: 420,
                      ),
                      const Text(
                        'NAMFISA ONLINE',
                        style: TextStyle(
                            fontSize: 20, color: FisaColor.primaryColor),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),

          const Line(
            height: 16,
          ),

          //second container
          SingleChildScrollView(
            physics: const NeverScrollableScrollPhysics(),
            scrollDirection: Axis.horizontal,
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 300,
              ),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 8.0),
                    child: Text(
                      'Not logged in',
                      style: TextStyle(
                        color: FisaColor.primaryColor,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 740,
                    child: Line(
                      height: 2,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 8.0),
                    child: Text(
                      'Welcome to Namfisa Online',
                      style: TextStyle(
                          color: FisaColor.secondaryColor,
                          fontSize: 20,
                          fontWeight: FontWeight.normal),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
