import 'package:ayurkosh/pages/chat_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 39, 194, 101),
        body: Center(
          child: Container(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  '/home/aaryankumarsinha/AyurKosh/ayurkosh/lib/assets/white_fill_logo_big.png',
                  width: 200,
                  height: 200,
                ),
                const SizedBox(
                  width: 10,
                  height: 10,
                ),
                const Text(
                  "Welcome To The Nature's Therapy",
                  style: TextStyle(
                    color: Colors.black, // Text color inside the white box
                    fontSize: 24.0,
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Navigate to the second page when the button is pressed
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const ChatPage()),
                    );
                  },
                  child: const Text('Let\'s Get Started'),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
