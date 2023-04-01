import 'package:flutter/material.dart';
import 'package:linkup/screens/hospitalpage.dart';
import 'package:linkup/themes/theme1.dart';

import 'package:linkup/screens/getstarted.dart';
import 'package:linkup/screens/userlevel.dart';

import 'screens/pateint_page.dart';

void main() {
  runApp(const LinkUP());
}

class LinkUP extends StatelessWidget {
  const LinkUP({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'LinkUp',
        theme: blueBoyTheme(context),
        routes: {
          '/': (context) => const GetStarted(),
          '/user': (context) => const UserLevel(),
          '/hospital': (context) => const HospitalPage(hospitalName: 'AIIMS New Delhi',),
          '/patient': (context) => const PatientPage(patientName: 'Vedant Dwivedi'),
        },
    );
  }
}
