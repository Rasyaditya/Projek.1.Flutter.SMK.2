import 'package:flutter/material.dart';

import 'better_help_cards.dart';

class home extends StatelessWidget {
  const home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(246, 167, 74, 1),
      // appBar: AppBar(title: const Text('Get Better Help!')),
      body: Center(
        child: (Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: const Text(
                'Better Help',
                style: TextStyle(
                  fontSize: 20,
                  color: Color.fromRGBO(255, 234, 167, 1),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            SizedBox(height: 5),

            Container(
              child: const Text(
                'Feel Better by Getting Help',
                style: TextStyle(
                  fontSize: 15,
                  color: Color.fromRGBO(255, 234, 167, 1),
                ),
              ),
            ),

            SizedBox(height: 20),

            OutlinedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const bt_cards(),
                    ),
                  );
                },
                child: const Text(
                  'Check This Out',
                  style: TextStyle(
                    color: Color.fromRGBO(255, 234, 167, 1),
                  ),
                )),
          ],
        )),
      ),
    );
  }
}
