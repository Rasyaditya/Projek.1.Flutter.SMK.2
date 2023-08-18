import 'package:flutter/material.dart';
import 'Curriculum Vitae.dart';

class bt_cards extends StatelessWidget {
  const bt_cards({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(246, 167, 74, 1),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(300, 50),
                  primary: Color.fromRGBO(219, 148, 67, 1),
                  elevation: 0,
                ),
                onPressed: (){
                  Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const CV(),
                  ),
                );
                  },
                child: Text('Reach out!')
            ),

            // const SizedBox(height: 16), // Adds vertical spacing between widgets

            ElevatedButton(
                style: ElevatedButton.styleFrom(
                minimumSize: Size(300, 50),
                primary: Color.fromRGBO(219, 148, 67, 1),
                elevation: 0,
                ),
                onPressed: (){
                Navigator.of(context).push(
                MaterialPageRoute(
                builder: (context) => const CV(),
                ),
                );
                },
                child: Text('Best places to rest'),
                ),

                // const SizedBox(height: 16), // Adds vertical spacing between widgets

                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                  minimumSize: Size(300, 50),
                  primary: Color.fromRGBO(219, 148, 67, 1),
                  elevation: 0,
                  ),
                  onPressed: (){
                  Navigator.of(context).push(
                  MaterialPageRoute(
                  builder: (context) => const CV(),
                  ),
                  );
                  },
                  child: Text('Look into Therapists')
                )

          ],
        ),
      ),
    );
  }
}