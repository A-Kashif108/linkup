import 'package:flutter/material.dart';

class ScheduleScreen extends StatelessWidget {
  const ScheduleScreen({super.key, required this.requested});
  final List<Map<String, String>> requested;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: [
          ...List.generate(
            requested.length,
             (index) => 
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 20),
                child: Container(
                  height: 120,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        requested[index]['date']!,
                        style: const TextStyle(
                          fontSize: 18,
                          color: Color(0xFF2050F6),
                          fontWeight: FontWeight.w600,
                        ),
                        ),
                        const SizedBox(height: 50,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              requested[index]['docName']!,
                              style: const TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              requested[index]['status']!,
                              style:  TextStyle(
                                fontSize: 14,
                                color: requested[index]['status'] == 'Completed'
                                    ? const Color(0xFF2050F6)
                                    : Colors.black,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 5,),
                        Text(
                          requested[index]['time']!,
                          style: const TextStyle(
                            fontSize: 14,
                            color: Color(0xFF757575),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                    ],
                  ),
                ),
              ),
             ),
        ],
      ),
    );
  }
}
