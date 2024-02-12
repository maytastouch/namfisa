import 'package:flutter/material.dart';
import 'package:namfisa/const/colors.dart';

class MobileLoginPage extends StatefulWidget {
  const MobileLoginPage({super.key});

  @override
  State<MobileLoginPage> createState() => _MobileLoginPageState();
}

class _MobileLoginPageState extends State<MobileLoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding:
                EdgeInsets.only(top: MediaQuery.of(context).size.height / 12),
            child: Center(
              child: Image.asset('assets/images/logo.png',
                  width: 200, height: 200),
            ),
          ),

          //username input field
          Padding(
            padding: EdgeInsets.only(
              top: MediaQuery.of(context).size.height / 12,
            ),
            child: TextFormField(
              decoration: const InputDecoration(
                labelText: 'Username',
                labelStyle: TextStyle(
                  color: FisaColor.secondaryColor,
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: FisaColor.secondaryColor,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: FisaColor.secondaryColor,
                  ),
                ),
              ),
            ),
          ),

          //username input field
          Padding(
            padding: EdgeInsets.only(
              top: MediaQuery.of(context).size.height / 24,
            ),
            child: TextFormField(
              decoration: const InputDecoration(
                labelText: 'Password',
                labelStyle: TextStyle(
                  color: FisaColor.secondaryColor,
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: FisaColor.secondaryColor,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: FisaColor.secondaryColor,
                  ),
                ),
              ),
            ),
          ),

          const SizedBox(
            height: 20,
          ),

          const Padding(
            padding: EdgeInsets.only(bottom: 20.0),
            child: Text('Forgotten Password?'),
          ),

          //login button with long width
          SizedBox(
            //reduce the width of the button
            width: MediaQuery.of(context).size.width / 1.2,

            child: TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                //reduce the button radius
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                foregroundColor: Colors.white,
                backgroundColor: FisaColor.secondaryColor,
                minimumSize: Size(MediaQuery.of(context).size.width, 50),
              ),
              child: const Text('Login'),
            ),
          )
        ],
      ),
    ));
  }
}
