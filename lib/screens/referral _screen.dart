import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ReferralScreen extends StatelessWidget {
  const ReferralScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          const SizedBox(
            height: 40,
          ),
          Container(
            height: 197,
            width: 315,
            padding: const EdgeInsets.all(22),
            decoration: BoxDecoration(
              color: const Color(0xFFCFDAFF).withOpacity(0.68),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:  [
                const Text('Referral Suggestions',
                    style:  TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                    )),
                const SizedBox(height: 25,),
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.only(left: 5,right: 12),
                      alignment: Alignment.centerLeft,
                      height: 24,
                      width: 64,
                      decoration: BoxDecoration(
                        color: const Color(0xFF5E85FF),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 13,
                            width: 13,
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                            ),
                          ),
                          const Text(
                            'ENT',
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                            ),
                            ),
                        ],
                      )
                    ),
                    const SizedBox(width: 30,),
                    Container(
                      padding: const EdgeInsets.only(left: 5,right: 12),
                      alignment: Alignment.centerLeft,
                      height: 24,
                      width: 91,
                      decoration: BoxDecoration(
                        color: const Color(0xFF5E85FF),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 13,
                            width: 13,
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                            ),
                          ),
                          const Text(
                            'New Delhi',
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                            ),
                            ),
                        ],
                      )
                    ),
                  ],
                ),
                const Spacer(),
                Row(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      height: 18,
                      width: 18,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xFF2050F6),
                      ),
                      child: const Text('S',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          )),
                    ),
                    const SizedBox(width: 14,),
                    const Text('Safdarjung Hospital',
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                        )),
                    const Spacer(),
                    const Text('Send Request',
                        style: TextStyle(
                          fontSize: 12,
                          color: Color(0xFF2050F6),
                          fontWeight: FontWeight.w500,
                        )),
                    const SizedBox(width: 10,),
                  ],
                ),
                const SizedBox(height: 22,),
                Row(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      height: 18,
                      width: 18,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xFF2050F6),
                      ),
                      child: const Text('M',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          )),
                    ),
                    const SizedBox(width: 14,),
                    const Text('MAX Saket',
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                        )),
                    const Spacer(),
                    const Text('Send Request',
                        style: TextStyle(
                          fontSize: 12,
                          color: Color(0xFF2050F6),
                          fontWeight: FontWeight.w500,
                        )),
                    const SizedBox(width: 10,),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
      );
  }
}