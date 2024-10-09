import 'package:flutter/material.dart';
import 'package:flutter_application_15/widget_custom.dart';
import 'package:flutter_application_15/sign_in.dart';
import 'package:flutter_application_15/sign1_up.dart';
import 'package:flutter_application_15/widget_welcome.dart';



class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      child: Column(
        children: [
          Flexible(
              flex: 8,
              child: Container(
                  padding: const EdgeInsets.symmetric(
                    vertical: 0,
                    horizontal: 40.0,
                  ),
                  child: Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RichText(
                          textAlign: TextAlign.center,
                          text: const TextSpan(
                            children: [
                              TextSpan(
                                  text: 'DAFLA\n',
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 18, 18, 18),
                                    fontSize: 55.0,
                                    fontWeight: FontWeight.w900,
                                    height: 0.0,
                                  )),
                              TextSpan(
                                  text: '\nWelcome back!',
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 16, 15, 16),
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700,
                                    height: 0.0,
                                    // height: 0,
                                  ))
                            ],
                          ),
                        )
                      ],
                    ),
                  ))),
          Flexible(
            flex: 1,
            child: Align(
              alignment: Alignment.bottomRight,
              child: Row(
                children: [
                  Expanded(
                      child: WelcomeButton(
                    buttonText: 'Sign in',
                    onTap: Mylogin(),
                    color: Colors.black26,
                    textColor: Colors.black,
                  ))
                ],
              ),
            ),
          ),
          Flexible(
            flex: 1,
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Row(
                children: [
                  Expanded(
                      child: WelcomeButton(
                    buttonText: 'Sign up',
                    onTap: MyRegister(),
                    color: Colors.white54,
                    textColor: Colors.black87,
                  ))
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
