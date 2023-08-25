import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CV extends StatefulWidget {
  const CV({super.key});

  @override
  State<CV> createState() => _CVState();
}

class _CVState extends State<CV> {

  String dropdownValue_Jurusan = "RPL";
  String dropdownValue_Kelas = "10";

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
                maxHeight: double.infinity,
              ),
              padding: EdgeInsets.all(16.0),
              color: Color.fromRGBO(102, 153, 162, 1),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.all(5.0),
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
                    padding: EdgeInsets.all(5.0),
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
                            keyboardType: TextInputType.number,
                            inputFormatters: <TextInputFormatter>[
                              FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                            ],
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
                    padding: EdgeInsets.all(5.0),
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
                              keyboardType: TextInputType.number,
                              inputFormatters: <TextInputFormatter>[
                                FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                              ],
                              decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: 'Isi Dengan Nomor Telepon Anda',
                              filled: true,
                              fillColor: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    )
                  ),

                  Container(
                    padding: EdgeInsets.all(5.0),
                    width: 500,
                    child: Row(
                      children: [
                        SizedBox(
                          child: DropdownButton<String>(
                            hint: Text("Pilih Jurusanmu"),
                            value: dropdownValue_Jurusan,
                            items: <String>['RPL', 'AM', 'TKJ'].map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(
                                  value,
                                  style: TextStyle(fontSize: 20),
                                ),
                              );
                            }).toList(),
                            onChanged: (String? newValue_jurusan) {
                              setState(() {
                                dropdownValue_Jurusan = newValue_jurusan!;
                              });
                            },
                          ),
                        ),

                        SizedBox(width: 100),

                        DropdownButton<String>(
                        hint: Text("Pilih Jurusanmu"),
                        value: dropdownValue_Kelas,
                        items: <String>['10', '11', '12'].map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(
                          value,
                          style: TextStyle(fontSize: 20),
                        ),
                      );
                    }).toList(),
                    onChanged: (String? newValue_kelas) {
                      setState(() {
                        dropdownValue_Kelas = newValue_kelas!;
                      });
                    },
                  ),
                      ],
                    ),
                  ),

                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(300, 50),
                        backgroundColor: Color.fromRGBO(45, 74, 76, 1),
                        elevation: 0,
                      ),
                      onPressed: (){
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const CV(),
                          ),
                        );
                      },
                      child: Text('Make CV')
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

