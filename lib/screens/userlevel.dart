import 'package:flutter/material.dart';

class UserLevel extends StatelessWidget {
  const UserLevel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Align(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 40),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/hospital');
              },
              style: TextButton.styleFrom(
                fixedSize: const Size(208, 56),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                padding: const EdgeInsets.symmetric(vertical: 7, horizontal: 42),
                backgroundColor: const Color(0xFF2050F6),
              ),
              child: const Text(
                'Hospital',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
            const SizedBox(height: 40),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/patient');
              },
              style: TextButton.styleFrom(
                fixedSize: const Size(208, 56),
                shape: RoundedRectangleBorder(
                  side: const BorderSide(color: Color(0xFF2050F6)),
                  borderRadius: BorderRadius.circular(15),
                ),
                padding: const EdgeInsets.symmetric(vertical: 7, horizontal: 42),
                backgroundColor: Colors.white,
              ),
              child: const Text(
                'Patient',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
