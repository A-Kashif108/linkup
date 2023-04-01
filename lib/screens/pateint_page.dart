import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:linkup/screens/booking_screen.dart';

class PatientPage extends StatefulWidget {
  const PatientPage({super.key, required this.patientName});
  final String patientName;

  @override
  State<PatientPage> createState() => _PatientPageState();
}

class _PatientPageState extends State<PatientPage> {
  bool booking = false;
  List<Map<String, String>> hospitals = [
    {
      'name': 'Sir Ganga Ram Hospital',
      'image': 'https://tinyurl.com/2nvkhhf7',
      'location': 'New Delhi',
    },
    {
      'name': 'Sir Ganga Ram Hospital',
      'image': 'https://tinyurl.com/2nvkhhf7',
      'location': 'New Delhi',
    },
    {
      'name': 'Sir Ganga Ram Hospital',
      'image': 'https://tinyurl.com/2nvkhhf7',
      'location': 'New Delhi',
    },
  ];

  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(27.0),
              child: Container(
                alignment: Alignment.bottomLeft,
                height: 45,
                width: double.infinity,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      widget.patientName,
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
                        'V',
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
           booking?
           BookingScreen():
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 27.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      TextField(
                          decoration: InputDecoration(
                        contentPadding:
                            const EdgeInsets.symmetric(vertical: 10),
                        filled: true,
                        fillColor: Colors.white,
                        hintText:
                            'Search for hospitals, departments, location etc.',
                        hintStyle: const TextStyle(
                          color: Color(0xFF969696),
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(
                            color: Color(0xFF2050F6),
                            width: 2,
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(
                            color: Color(0xFF2050F6),
                            width: 2,
                          ),
                        ),
                        prefixIcon: const Icon(
                          Icons.search,
                          color: Color(0xFF49454F),
                        ),
                      )),
                      const SizedBox(
                        height: 40,
                      ),
                      const Text(
                        'Hospitals Near You',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 300,
                  width: w,
                  child: ListView.builder(
                    padding: const EdgeInsets.only(left: 27),
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Container(
                        height: 277,
                        width: 239,
                        child: Column(
                          children: [
                            Container(
                              padding:
                                  const EdgeInsets.only(left: 19, bottom: 15),
                              alignment: Alignment.bottomLeft,
                              height: 51,
                              width: 239,
                              decoration: const BoxDecoration(
                                  color: Color(0xFF7B98FF),
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(15),
                                    topRight: Radius.circular(15),
                                  )),
                              child: Text(
                                hospitals[index]['name']!,
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            Container(
                              height: 161,
                              width: 239,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image:
                                      NetworkImage(hospitals[index]['image']!),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Container(
                              height: 65,
                              width: 239,
                              padding: const EdgeInsets.all(19),
                              decoration: BoxDecoration(
                                color: const Color(0xFFFFFFFF),
                                borderRadius: const BorderRadius.only(
                                  bottomLeft: Radius.circular(15),
                                  bottomRight: Radius.circular(15),
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.25),
                                    blurRadius: 4,
                                    offset: const Offset(0, 4),
                                  ),
                                ],
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    hospitals[index]['location']!,
                                    style: const TextStyle(
                                      color: Colors.black,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        booking = true;
                                      });
                                    },
                                    child: Container(
                                      height: 26,
                                      width: 62,
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                        color: const Color(0xFF2050F6),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: const Text(
                                        'Book',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    itemCount: hospitals.length,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BotNavBar(),
    );
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
