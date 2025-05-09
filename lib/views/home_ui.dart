import 'package:flutter/material.dart';
import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';
import 'package:money_tracking_app/views/home1.dart';
import 'package:money_tracking_app/views/home2.dart';
import 'package:money_tracking_app/views/home3.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeUi extends StatefulWidget {
  const HomeUi({super.key});

  @override
  State<HomeUi> createState() => _HomeUiState();
}

class _HomeUiState extends State<HomeUi> {
  NotchBottomBarController _controller = NotchBottomBarController(index: 1);

  List<Widget> viewInbody = [Home1(), Home2(), Home3()];

  int indexShow = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(230),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            ClipPath(
              clipper: BottomWaveClipper(),
              child: Container(
                height: 250,
                color: Colors.teal,
                child: const Padding(
                  padding: EdgeInsets.only(top: 50, left: 20, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Firstname Lastname",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Icon(Icons.account_circle, color: Colors.white, size: 32),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: -80,
              left: 20,
              right: 20,
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 16,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      blurRadius: 8,
                      offset: Offset(0, 4),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Text(
                      "ยอดคงเหลือ: 0฿",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.teal[700],
                      ),
                    ),
                    const SizedBox(height: 12),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: const [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.arrow_downward, color: Colors.green),
                            Text("เงินเข้า"),
                            Text("0฿"),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.arrow_upward, color: Colors.red),
                            Text("เงินออก"),
                            Text("0฿"),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),

      bottomNavigationBar: AnimatedNotchBottomBar(
        onTap: (valueParam) {
          setState(() {
            indexShow = valueParam;
          });
        },
        kIconSize: 24.0,
        kBottomRadius: 28.0,
        notchColor: const Color.fromARGB(255, 25, 161, 138),
        color: const Color.fromARGB(255, 25, 161, 138),
        notchBottomBarController: _controller,
        bottomBarItems: [
          BottomBarItem(
            inActiveItem: Icon(FontAwesomeIcons.wallet, color: Colors.white),
            activeItem: Icon(FontAwesomeIcons.wallet, color: Colors.white),
          ),
          BottomBarItem(
            inActiveItem: Icon(Icons.home, color: Colors.white),
            activeItem: Icon(Icons.home, color: Colors.white),
          ),

          ///svg item
          BottomBarItem(
            inActiveItem: Icon(Icons.wallet_giftcard, color: Colors.white),
            activeItem: Icon(Icons.wallet_giftcard, color: Colors.white),
          ),
        ],
      ),

      body: viewInbody[indexShow],
    );
  }
}

class BottomWaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height - 50);
    path.quadraticBezierTo(
      size.width / 2,
      size.height,
      size.width,
      size.height - 50,
    );
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
