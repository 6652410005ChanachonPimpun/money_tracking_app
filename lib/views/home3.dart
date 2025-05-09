import 'package:flutter/material.dart';

class Home3 extends StatefulWidget {
  const Home3({super.key});

  @override
  State<Home3> createState() => _Home3State();
}

class _Home3State extends State<Home3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(top: 150, left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: Text(
                'เงินออก',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 30),
            TextField(
              decoration: InputDecoration(
                labelText: 'รายการเงินออก',
                hintText: 'DETAIL',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'จำนวนเงินออก',
                hintText: '0.00',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              readOnly: true,
              decoration: InputDecoration(
                labelText: 'วัน เดือน ปีที่เงินออก',
                hintText: 'DATE INCOME',
                suffixIcon: Icon(Icons.calendar_today),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              onTap: () async {},
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
              onPressed: () {},
              child: Text(
                'บันทึกเงินออก',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
