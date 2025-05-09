import 'package:flutter/material.dart';
import 'package:money_tracking_app/views/login.dart';
import 'package:money_tracking_app/views/register_ui.dart';

class WelcomeUi extends StatefulWidget {
  const WelcomeUi({super.key});

  @override
  State<WelcomeUi> createState() => _WelcomeUiState();
}

class _WelcomeUiState extends State<WelcomeUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 160, bottom: 50),
            child: Image.asset(
              'assets/images/img1.jpg',
              width: 400,
              height: 400,
            ),
          ),
          Text(
            'บันทึก\nรายรับรายจ่าย',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 35,
              fontWeight: FontWeight.bold,
              color: const Color.fromARGB(255, 25, 161, 138),
            ),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 25, 161, 138),
              minimumSize: Size(180, 60),
              shadowColor: Colors.black,
              elevation: 20,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Login()),
              );
            },
            child: Text(
              '      เริ่มใช้งานแอปพลิเคชั่น      ',
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Row(
              children: [
                Text(
                  '                        ยังไม่ได้ลงทะเบียน ?',
                  style: TextStyle(
                    fontSize: 15,
                    color: const Color.fromARGB(255, 0, 0, 0),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const RegisterUi(),
                      ),
                    );
                  },
                  child: Text(
                    '  ลงทะเบียน',
                    style: TextStyle(
                      fontSize: 15,
                      color: const Color.fromARGB(255, 25, 161, 138),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
