import 'package:flutter/material.dart';
import 'package:money_tracking_app/views/home_ui.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool _isObscure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        toolbarHeight: 120,
        title: Text(
          'เข้าใช้งาน Money Tracking',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 25, color: Colors.white),
        ),
        backgroundColor: const Color.fromARGB(255, 25, 161, 138),
      ),
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 100),
              Image.asset('assets/images/img1.jpg', width: 250, height: 250),
              SizedBox(height: 50),
              Padding(
                padding: const EdgeInsets.only(right: 30, left: 30),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'ชื่อผู้ใช้',
                    hintText: 'USERNAME',
                    hintStyle: TextStyle(color: Colors.grey),
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(right: 30, left: 30),
                child: TextField(
                  obscureText: _isObscure,
                  decoration: InputDecoration(
                    labelText: 'รหัสผ่าน',
                    hintText: 'PASSWORD',
                    hintStyle: TextStyle(color: Colors.grey),
                    border: OutlineInputBorder(),
                    suffixIcon: IconButton(
                      icon: Icon(
                        _isObscure ? Icons.visibility_off : Icons.visibility,
                        color: Colors.grey,
                      ),
                      onPressed: () {
                        setState(() {
                          _isObscure = !_isObscure;
                        });
                      },
                    ),
                  ),
                ),
              ),
              SizedBox(height: 40),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 30,
                  backgroundColor: const Color.fromARGB(255, 25, 161, 138),
                  minimumSize: Size(360, 55),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => HomeUi()),
                  );
                },
                child: Text(
                  'Sing in',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
