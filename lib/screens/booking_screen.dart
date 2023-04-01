import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_calendar_carousel/flutter_calendar_carousel.dart';
import 'package:linkup/screens/calender_screen.dart';

class BookingScreen extends StatefulWidget {
  const BookingScreen({super.key});

  @override
  State<BookingScreen> createState() => _BookingScreenState();
}

class _BookingScreenState extends State<BookingScreen> {
  List<String> departments = [
    'Anestheisa',
    'ENT',
    'Dermatology',
    'General Surgery',
  ];
  List<Map<String, String>> doctors = [
    {
      'name': 'Dr. John Doe',
      'experience': '10 years',
    },
    {
      'name': 'Dr. Rakesh Jain',
      'experience': '17 years',
    },
  ];
  List<String> timeSlot = [
    '4:00 PM',
    '4:15 PM',
    '4:30 PM',
  ];
  String? selectedTime;
  String? selectedDepartment;
  String? selectedDoctor;
  DateTime? selectedDate;
  int selected = 0;
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(27),
        child: selected == 3
            ? Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:  [
                  const Text(
                    'Your Appointments',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    height: 110,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '${selectedDate?.day}/${selectedDate?.month}/${selectedDate?.year}',
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF2050F6),
                          ),
                          ),
                          const Spacer(),
                          Row(
                            children: [
                              Container(
                                height: 25,
                                width: 25,
                                decoration: BoxDecoration(
                                  color:  const Color(0xFFD9D9D9),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                              ),
                              const SizedBox(width: 10),
                              Text(
                          selectedDoctor ?? '',
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                        const Spacer(),
                        TextButton(
                          onPressed: () {
                            setState(() {
                              selected = 2;
                            });
                          },
                          child: const Text(
                            'Reschedule',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Color(0xFF2050F6),
                            ),
                          ),
                        ),
                            ],
                          ),
                          Row(
                            children: [
                              const SizedBox(
                                width: 35,
                              ),
                              Text('${selectedDate!.day}/${selectedDate!.month}/${selectedDate!.year}',
                              style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Color(0xFF706A6A6),
                              ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(
                                selectedTime ?? '',
                                style: const TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xFF706A6A6),
                                ),
                              ),
                            ],
                          ),
                      ],
                    ),
                    ),
                ],
              )
            : selected == 2
                ? Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Schedule',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(height: 20),
                      Container(
                        alignment: Alignment.center,
                        height: 300,
                        child: CalendarCarousel(
                          todayButtonColor: Colors.transparent,
                          todayTextStyle: const TextStyle(color: Colors.black),
                          width: w * 0.7,
                          selectedDateTime: selectedDate,
                          onDayPressed: (p0, p1) {
                            setState(() {
                              selectedDate = p0;
                            });
                          },
                          selectedDayButtonColor: const Color(0xFF2050F6),
                          selectedDayTextStyle: const TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        'Choose Slot',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                      ),
                      Container(
                        child: Row(
                          children: [
                            ...List.generate(
                                timeSlot.length,
                                (index) => Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: InkWell(
                                        onTap: () {
                                          setState(() {
                                            selectedTime = timeSlot[index];
                                          });
                                        },
                                        child: Container(
                                          alignment: Alignment.center,
                                          height: 28,
                                          width: 70,
                                          decoration: BoxDecoration(
                                            color:
                                                selectedTime == timeSlot[index]
                                                    ? const Color(0xFF2050F6)
                                                    : Colors.transparent,
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            border: Border.all(
                                              color: const Color(0xFF2050F6),
                                              width: 1,
                                            ),
                                          ),
                                          child: Text(
                                            timeSlot[index],
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500,
                                              color: selectedTime ==
                                                      timeSlot[index]
                                                  ? Colors.white
                                                  : Colors.black,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ))
                          ],
                        ),
                      ),
                      const Spacer(),
                      Container(
                        alignment: Alignment.center,
                        child: ElevatedButton(
                          onPressed: () {
                            if (selectedDate != null && selectedTime != null) {
                              setState(() {
                                selected = 3;
                              });
                            } else {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content: Text('Please select date and time'),
                                ),
                              );
                            }
                          },
                          style: ElevatedButton.styleFrom(
                            fixedSize: const Size(130, 45),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            backgroundColor: const Color(0xFF2050F6),
                            textStyle: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                          child: const Text(
                            'Book',
                          ),
                        ),
                      ),
                    ],
                  )
                : selected == 1
                    ? Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Choose Doctor',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                            ),
                          ),
                          const SizedBox(height: 20),
                          ...List.generate(
                              doctors.length,
                              (index) => ListTile(
                                    contentPadding: const EdgeInsets.all(0),
                                    leading: Container(
                                      height: 25,
                                      width: 25,
                                      decoration: BoxDecoration(
                                        color: const Color(0xFFD9D9D9),
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                    ),
                                    title: Text(
                                      doctors[index]['name']!,
                                      style: const TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black,
                                      ),
                                    ),
                                    subtitle: Text(
                                      doctors[index]['experience']!,
                                      style: const TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xFF706A6a),
                                      ),
                                    ),
                                    trailing: TextButton(
                                      onPressed: () {
                                        setState(() {
                                          selectedDoctor =
                                              doctors[index]['name'];
                                          selected = 2;
                                        });
                                        print(selectedDoctor);
                                      },
                                      child: const Text(
                                        'Book Slot',
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          color: Color(0xFF2050F6),
                                        ),
                                      ),
                                    ),
                                  ))
                        ],
                      )
                    : Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Choose Department',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                            ),
                          ),
                          const SizedBox(height: 20),
                          ...List.generate(
                              departments.length,
                              (index) => RadioListTile<String>(
                                    controlAffinity:
                                        ListTileControlAffinity.trailing,
                                    contentPadding: const EdgeInsets.all(0),
                                    title: Text(
                                      departments[index],
                                      style: const TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.black,
                                      ),
                                    ),
                                    value: departments[index],
                                    groupValue: selectedDepartment,
                                    onChanged: (value) {
                                      setState(() {
                                        selectedDepartment = value;
                                      });
                                    },
                                  )),
                          const Spacer(),
                          Container(
                            alignment: Alignment.center,
                            child: ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  selected = 1;
                                });
                              },
                              style: ElevatedButton.styleFrom(
                                fixedSize: const Size(130, 45),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                backgroundColor: const Color(0xFF2050F6),
                                textStyle: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                ),
                              ),
                              child: const Text(
                                'Next',
                              ),
                            ),
                          ),
                        ],
                      ),
      ),
    );
  }
}
