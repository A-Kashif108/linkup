import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:linkup/screens/referral%20_screen.dart';
import 'package:linkup/screens/schedule_screen.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class HospitalPage extends StatefulWidget {
  const HospitalPage({Key? key, required this.hospitalName}) : super(key: key);
  final String hospitalName;

  @override
  State<HospitalPage> createState() => _HospitalPageState();
}

class _HospitalPageState extends State<HospitalPage> {
  int _selectedIndex = 0;
  bool refer = false;
  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> list = [
      {
        'name': 'Vedant',
        'dept': 'ENT',
        'time': '21 March, 1400 hrs',
        'type': 'request',
      },
      {
        'name': 'MAX',
        'dept': 'ENT',
        'time': '21 March, 1400 hrs',
        'type': 'referred',
      },
    ];
    List<Map<String, String>> list2 = [
      {
        'docName': 'Dr. Rajesh Mishra',
        'time': '1400',
        'date': '17/03/2021',
        'status': 'Completed',
      },
      {
        'docName': 'Dr. Rajesh Mishra',
        'time': '1400',
        'date': '21/03/2021',
        'status': 'Scheduled',
      }
    ];
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            children: [
              Container(
                alignment: Alignment.bottomLeft,
                height: 65,
                width: double.infinity,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        widget.hospitalName,
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Container(
                        height: 34,
                        width: 34,
                        alignment: Alignment.center,
                        decoration: const BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12,
                              spreadRadius: 3,
                              blurRadius: 8,
                              offset: Offset(0, 4),
                            ),
                          ],
                          color: Color(0xFF2050F6),
                          shape: BoxShape.circle,
                        ),
                        child: const Text(
                          'A',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              _selectedIndex == 1
                  ? Expanded(child: ScheduleScreen(requested: list2)):
                  refer? const ReferralScreen()
                  : Expanded(
                      child: ListView.builder(
                      itemCount: list.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(28.0),
                          child: Container(
                            padding: const EdgeInsets.all(20),
                            height: 140,
                            width: 320,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: const Color(0xFFCFDAFF),
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      list[index]['name']!,
                                      style: TextStyle(
                                        color: list[index]['type'] == 'request'
                                            ? Colors.black
                                            : const Color(0xFF2050F6),
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      list[index]['type'] == 'request'
                                          ? ' has requested an appointment.'
                                          : ' has referred a patient.',
                                      style: const TextStyle(
                                        color: Colors.black,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 10),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Dept: ${list[index]['dept']}',
                                        style: const TextStyle(
                                          color: Color(0xFF626262),
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      Text(
                                        'Time: ${list[index]['time']}',
                                        style: const TextStyle(
                                          color: Color(0xFF626262),
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 8),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      InkWell(
                                        onTap: () {
                                          setState(() {
                                            _selectedIndex = 1;
                                          });
                                        },
                                        child: Container(
                                          height: 30,
                                          width: 70,
                                          alignment: Alignment.center,
                                          decoration: const BoxDecoration(
                                            color: Color(0xFF2050F6),
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(15),
                                            ),
                                          ),
                                          child: const Text(
                                            'Accept',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ),
                                      InkWell(
                                        onTap: () {
                                          setState(() {
                                            refer = true;
                                          });
                                        },
                                        child: Container(
                                          height: 30,
                                          width: 70,
                                          alignment: Alignment.center,
                                          decoration: const BoxDecoration(
                                            color: Color(0xFF7B98FF),
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(15),
                                            ),
                                          ),
                                          child: const Text(
                                            'Refer',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        height: 30,
                                        width: 70,
                                        alignment: Alignment.center,
                                        decoration: const BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(15),
                                          ),
                                        ),
                                        child: const Text(
                                          'Reject',
                                          style: TextStyle(
                                            color: Color(0xFF2050FFF),
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    )),
            ],
          ),
        ),
        bottomNavigationBar: BotNavBar());
  }

  BottomNavigationBar BotNavBar() {
    return BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (int index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        backgroundColor: Colors.white,
        selectedItemColor: const Color(0xFF2050F6),
        unselectedItemColor: const Color(0xFF626262),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(FontAwesome5Solid.ribbon),
            label: 'Appointments',
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesome5Solid.calendar_plus),
            label: 'Schedule',
          ),
        ],
      );
  }
}
