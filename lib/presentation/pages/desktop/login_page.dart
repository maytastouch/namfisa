import 'package:flutter/material.dart';
import 'package:namfisa/const/colors.dart';

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
        children: [
          //first container
          SingleChildScrollView(
            physics: const NeverScrollableScrollPhysics(),
            padding: const EdgeInsets.symmetric(
              horizontal: 350,
            ),
            scrollDirection: Axis.horizontal,
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
                      width: 330,
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

          //container break
          Container(
            height: 20,
            width: MediaQuery.of(context).size.width,
            color: FisaColor.secondaryColor,
          )
        ],
      ),
    );
  }
}
