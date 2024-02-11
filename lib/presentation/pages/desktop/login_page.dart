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
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
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
                      padding: const EdgeInsets.only(
                        top: 25,
                        left: 25,
                        right: 25,
                      ),
                      color: const Color.fromARGB(255, 225, 221, 221),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          //first text
                          const Text(
                            'Namfisa Online is an on-line application that manages all of your formal communications with your regulator. Using\n\n\nNamfisa Online, you will be able to complete and submit all required forms on-line. In addition, you will be able to see\n\n\nyour companys profile - the current information held by the regulator about your company - and keep it up to date.',
                            style: TextStyle(
                              color: Colors.black,
                              height: 0.5,
                              fontSize: 13,
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(
                              top: 25.0,
                              bottom: 30,
                            ),
                            child: Text(
                              'To access Namfisa Online, please enter your username and password below (password is case sensitive):',
                              style: TextStyle(
                                  color: Colors.black,
                                  height: 0.5,
                                  fontSize: 13),
                            ),
                          ),

                          //first input field

                          Padding(
                            padding: const EdgeInsets.only(bottom: 8.0),
                            child: Row(
                              children: [
                                const Text(
                                  'Username:',
                                  style: TextStyle(
                                      color: Colors.black,
                                      height: 0.5,
                                      fontSize: 13),
                                ),

                                const SizedBox(
                                  width: 150,
                                ),

                                //create textfield with white input border
                                Container(
                                  width: 200,
                                  height: 25,
                                  margin: const EdgeInsets.only(left: 10),
                                  padding: const EdgeInsets.only(left: 3),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(5),
                                    border: Border.all(
                                      color: Colors.grey,
                                      width: 1,
                                    ),
                                  ),
                                  child: const TextField(
                                    //change the color of the cursor to black
                                    //change the size of the cursor
                                    //change the height of the cursor
                                    cursorHeight: 19,
                                    cursorWidth: 1,
                                    cursorColor: Colors.black,
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                    ),
                                  ),
                                ),

                                const SizedBox(
                                  width: 10,
                                ),

                                const Text(
                                  '*',
                                  style: TextStyle(
                                      color: Colors.red,
                                      height: 0.5,
                                      fontSize: 13),
                                ),
                              ],
                            ),
                          ),

                          //second input field
                          Row(
                            children: [
                              const Text(
                                'Password:',
                                style: TextStyle(
                                    color: Colors.black,
                                    height: 0.5,
                                    fontSize: 13),
                              ),

                              const SizedBox(
                                width: 150,
                              ),

                              //create textfield with white input border
                              Container(
                                width: 200,
                                height: 25,
                                margin: const EdgeInsets.only(left: 10),
                                padding: const EdgeInsets.only(left: 3),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(5),
                                  border: Border.all(
                                    color: Colors.grey,
                                    width: 1,
                                  ),
                                ),
                                child: const TextField(
                                  //change the color of the cursor to black
                                  //change the size of the cursor
                                  //change the height of the cursor
                                  cursorHeight: 19,
                                  cursorWidth: 1,
                                  cursorColor: Colors.black,
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                  ),
                                ),
                              ),

                              const SizedBox(
                                width: 10,
                              ),

                              const Text(
                                '*',
                                style: TextStyle(
                                    color: Colors.red,
                                    height: 0.5,
                                    fontSize: 13),
                              ),
                            ],
                          ),

                          Padding(
                            padding: const EdgeInsets.only(top: 40.0),
                            child: Row(
                              children: [
                                const SizedBox(
                                  width: 210,
                                ),

                                //create login button
                                Container(
                                  width: 100,
                                  height: 30,
                                  margin: const EdgeInsets.only(left: 10),
                                  decoration: BoxDecoration(
                                    color: FisaColor.secondaryColor,
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: const Center(
                                    child: Text(
                                      'Login',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 13,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          //forgotten password

                          const Padding(
                            padding: EdgeInsets.only(top: 30.0),
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 220,
                                ),

                                //create login button
                                Center(
                                  child: Text(
                                    'Forgotten Password',
                                    style: TextStyle(
                                      //underline the text
                                      decoration: TextDecoration.underline,
                                      color: Colors.black,
                                      fontSize: 13,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          const Padding(
                            padding: EdgeInsets.only(
                              top: 25.0,
                              bottom: 30,
                            ),
                            child: Text(
                              'The recommended minimum computer requirements for using Namfisa Online are:',
                              style: TextStyle(
                                  color: Colors.black,
                                  height: 0.5,
                                  fontSize: 13),
                            ),
                          ),

                          const Padding(
                            padding: EdgeInsets.only(
                              top: 25.0,
                              bottom: 30,
                            ),
                            child: Text(
                              '• We support the most recent versions of the following browsers; Microsoft Edge, Firefox, Google Chrome, and Safari.\n\n\n• For viewing your forms in PDF (and printing where signatures are required) you will need a PDF viewer, such as Adobe\n\n\n   Acrobat.\n\n\n• Forms can be exported as spreadsheets. For this you will need Microsoft Excel.\n\n\n• I connection to a printer so you can print out hard copies of forms.\n\n\n• We also recommend that your screen resolution iS at least 1920 x1080 or higher for optimal display.',
                              style: TextStyle(
                                  color: Colors.black,
                                  height: 0.5,
                                  fontSize: 13),
                            ),
                          ),

                          const Padding(
                            padding: EdgeInsets.only(
                              top: 30.0,
                              bottom: 20,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  '© Vizor 2000-2024',
                                  style: TextStyle(
                                      color: Colors.black,
                                      height: 0.5,
                                      fontSize: 13),
                                ),
                                Text(
                                  'Vizor: Software for Effective Regulation',
                                  style: TextStyle(
                                      color: Colors.black,
                                      height: 0.5,
                                      fontSize: 13),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),

                    // ignore: avoid_unnecessary_containers
                    Container(
                      child: const Text(
                        '.',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
