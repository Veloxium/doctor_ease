import 'package:doctor_ease/color/ccolor.dart';
import 'package:doctor_ease/components/button/cbutton.dart';
import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
          border: Border.all(color: const Color(0xffCDCCCD)),
          borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Row(
          children: [
            Column(
              children: [
                Image.asset(
                  'assets/img-1.png',
                  width: 70,
                  height: 93,
                ),
              ],
            ),
            const SizedBox(
              width: 12,
            ),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomButton(
                  fontsize: 8,
                  textColor: CColors.primary,
                  background: Color(0xffEAF3F2),
                  label: 'Profisional Doctor',
                  width: 88,
                  height: 18,
                ),
                SizedBox(
                  height: 6,
                ),
                Text(
                  'Prof. Dr. David Williams',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  'Specialist liver',
                  style: TextStyle(fontSize: 10),
                ),
                SizedBox(
                  height: 6,
                ),
                CustomButton(
                  fontsize: 10,
                  label: 'Book Apoitment',
                  width: 204,
                  height: 27,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
