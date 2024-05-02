import 'package:doctor_ease/components/card/ccard.dart';
import 'package:doctor_ease/components/form/cform.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      appBar: AppBar(
        title: const Row(
          children: [
            CircleAvatar(
                backgroundColor: Colors.transparent,
                backgroundImage: AssetImage('assets/rounded-user.png')),
            SizedBox(
              width: 13,
            ),
            Text('User')
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 21),
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Expanded(
                    child: TextFormField(
                  decoration: const InputDecoration(
                      fillColor: Color(0xffF3F3F3),
                      filled: true,
                      label: Icon(CupertinoIcons.search),
                      floatingLabelBehavior: FloatingLabelBehavior.never,
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 14, horizontal: 12),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xffCDCCCD)),
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15)))),
                )),
                const SizedBox(
                  width: 20,
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 18, vertical: 18),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: const Color(0xffEAF3F2),
                      borderRadius: BorderRadius.circular(16)),
                  child: Image.asset(
                    'assets/fillter.png',
                    height: 18,
                    width: 18,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Image.asset('assets/banner.png'),
            const SizedBox(
              height: 30,
            ),
            _buildTitle('Healthcare'),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _buildItem('assets/tooth.png', 'Dentist'),
                _buildItem('assets/love.png', 'Liver Health'),
                _buildItem('assets/brain.png', 'Neurologis'),
                _buildItem('assets/user.png', 'General'),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            _buildTitle('Top Specialist'),
            const SizedBox(
              height: 17,
            ),
            const Expanded(
                child: SingleChildScrollView(
              child: Column(
                children: [
                  CustomCard(),
                  SizedBox(
                    height: 17,
                  ),
                  CustomCard(),
                  SizedBox(
                    height: 17,
                  ),
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}

Widget _buildItem(String img, String title) {
  return Column(
    children: [
      CircleAvatar(
        backgroundColor: const Color(0xffEAF3F2),
        radius: 30,
        child: Image.asset(
          img,
          height: 22,
          width: 22,
        ),
      ),
      const SizedBox(
        height: 12,
      ),
      Text(
        title,
        style: const TextStyle(fontWeight: FontWeight.bold),
      )
    ],
  );
}

Widget _buildTitle(String title) {
  return Row(
    children: [
      Image.asset(
        'assets/healthcare.png',
        height: 20,
        width: 20,
      ),
      const SizedBox(
        width: 12,
      ),
      Text(
        title,
        style: const TextStyle(fontWeight: FontWeight.bold),
      )
    ],
  );
}
