import 'package:flutter/material.dart';

class ContactUsScreen extends StatelessWidget {
  const ContactUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // theme
    var primaryColor = Theme.of(context).primaryColor;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'ارتباط با ما',
          style: TextStyle(color: Colors.white, fontSize: 14.0),
        ),
        backgroundColor: primaryColor,
      ),
      body: Container(
        margin: const EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20.0),
          boxShadow: [
            BoxShadow(color: Colors.grey.shade100, blurRadius: 10.0),
          ],
        ),
        child: const Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                  textAlign: TextAlign.justify,
                  'در صورت داشتن هر گونه ابهام در مورد اپلیکیشن «آموزش قرآن کریم» می توانید از راه های ارتباطی زیر با ما در تماس باشید :'),
              SizedBox(height: 20.0),
              Text(
                textAlign: TextAlign.start,
                'ایمیل : sajjad.flutter@gmail.com',
              ),
              SizedBox(height: 10.0),
              Text(
                textAlign: TextAlign.start,
                'شماره تماس : 09330461406',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
