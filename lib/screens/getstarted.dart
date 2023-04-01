import 'package:flutter/material.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
            backgroundColor: const Color.fromARGB(490, 32, 80, 246),
            body: Align(
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "LinkUp",
                    style: TextStyle(
                      color: Color.fromARGB(490, 255, 255, 255),
                      fontSize: 48,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Text("by Mboalabs",
                      style: TextStyle(
                        color: Color.fromARGB(490, 255, 255, 255),
                        fontSize: 32,
                      )),
                  SizedBox.fromSize(size: const Size(0, 40),),
                  TextButton(
                      onPressed: () {
                        Navigator.of(context).pushReplacementNamed('/user');
                      },
                      child: const Padding(
                        padding:  EdgeInsets.symmetric(vertical: 7,horizontal: 42),
                        child: Text(
                            'Get Started',
                            style: TextStyle(
                              color: Color.fromARGB(490,0,0,0),
                              fontSize: 20,
                            )
                        ),
                      ))
                ],
              ),
            ),);
  }
}
