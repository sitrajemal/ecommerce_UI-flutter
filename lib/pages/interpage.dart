import 'package:ecommerce/pages/homepage.dart';
import 'package:flutter/material.dart';

class InterPage extends StatelessWidget {
  const InterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 123, 195, 205),
      body: Center(
        child: Column(
          children: [
            //logo

            //subtitle
            //start now
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Image.asset(
                  'lib/images/nike.png',
                  height: 100,
                  width: 700,
                ),
              ),
            ),
            const SizedBox(
              height: 70,
            ),

            const Text(
              'Just do it',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),

            const SizedBox(
              height: 70,
            ),

            //title

            const Text(
              'Brand new shoes made with premium quality',
              style: TextStyle(
                fontSize: 20,
              ),
            ),

            const SizedBox(
              height: 70,
            ),

            GestureDetector(
              onTap: () => Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const HomePage(),
                ),
              ),
              child: Container(
                height: 40,
                width: 200,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(12),
                ),
                padding:const EdgeInsets.all(24),
                child: const Center(
                  child: Text(
                    'Shop Now',
                    style: TextStyle(color: Color.fromARGB(255, 67, 191, 208),fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
