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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        'assets/images/logo.png',
                        width: 150,
                        height: 100,
                      ),
                      const SizedBox(
                        width: 460,
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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 8.0),
                    child: Text(
                      'Not logged in',
                      style: TextStyle(
                        color: FisaColor.primaryColor,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 780,
                    child: Line(
                      height: 2,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 8.0),
                    child: Text(
                      'Welcome to Namfisa Online',
                      style: TextStyle(
                          color: FisaColor.secondaryColor,
                          fontSize: 20,
                          fontWeight: FontWeight.normal),
                    ),
                  ),

                  //Inner content

                  Container(
                    width: 780,
                    padding: const EdgeInsets.all(25),
                    color: const Color.fromARGB(255, 225, 221, 221),
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //first text
                        Text(
                          'Namfisa Online is an on-line application that manages all of your formal communications with your regulator. Using\n\n\nNamfisa Online, you will be able to complete and submit all required forms on-line. In addition, you will be able to see\n\n\nyour companys profile - the current information held by the regulator about your company - and keep it up to date.',
                          style: TextStyle(
                              color: Colors.black, height: 0.5, fontSize: 13),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 25.0),
                          child: Text(
                            'To access Namfisa Online, please enter your username and password below (password is case sensitive):',
                            style: TextStyle(
                                color: Colors.black, height: 0.5, fontSize: 13),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
