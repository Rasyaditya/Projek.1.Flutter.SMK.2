import 'package:flutter/material.dart';

class CV extends StatelessWidget {
  const CV({super.key});

  void dropdownMethod(String? selectedValue) {
    if (selectedValue is String){
      setState((){
        _dropdownValue = selectedValue;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(45, 74, 76, 1) ,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 100,
              backgroundImage: AssetImage("images/pizza.jpg"),
            ),

            SizedBox(height: 15),

            Container(
              constraints: new BoxConstraints(
                minHeight: 5.0,
                minWidth: double.infinity,
                maxHeight: 1000 - 559,
              ),
              color: Color.fromRGBO(102, 153, 162, 1),
              child: Column(
                children: [
                  Container(
                    child: Column(
                      children: [
                        Text(
                          "Nama",
                          textAlign: TextAlign.left,
                        ),

                        SizedBox(height: 10),

                        SizedBox(
                          width: 500,
                          child: TextField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: 'Isi Dengan Nama Asli',
                              filled: true,
                              fillColor: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  Container(
                    child: Column(
                      children: [
                        Text(
                          "ID",
                          textAlign: TextAlign.left,
                        ),

                        SizedBox(height: 10),

                        SizedBox(
                          width: 500,
                          child: TextField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: 'Isi Dengan ID Yang Disedia',
                              filled: true,
                              fillColor: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  Container(
                    child: Column(
                      children: [
                        Text(
                          "No. Telepon",
                          textAlign: TextAlign.left,
                        ),

                        SizedBox(height: 10),

                        SizedBox(
                          width: 500,
                          child: TextField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: 'Isi Dengan Nomor Telepon Anda',
                              filled: true,
                              fillColor: Colors.white,
                            ),
                          ),
                        ),

                        Container(
                          child: Row(
                            children: [
                              DropdownButton(items: const [
                                DropdownMenuItem(child: Text("RPL"), value: "rpl",),
                                DropdownMenuItem(child: Text("AM"), value: "am",),
                                DropdownMenuItem(child: Text("TKJ"), value: "tkj",),
                              ], onChanged: dropdownMethod),
                            ],
                          )
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
