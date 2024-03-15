import 'package:durg_rohak1/fort_Total.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'fort_Class.dart';

class FortScreen extends StatefulWidget {
  const FortScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _FortScreenState createState() => _FortScreenState();
}

class _FortScreenState extends State<FortScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:const  Color.fromARGB(255, 9, 9, 9),
      body: Container(
        margin: const EdgeInsets.only(
          left: 10,
          right: 10,
        ),
        child: Container(
          color: const Color.fromARGB(255, 22, 22, 22),
          child: Column(
            children: [
              const SizedBox(height: 10),
              Text(
                "Durga-Rohak",
                style:
                    GoogleFonts.lato(fontSize: 27, fontWeight: FontWeight.w700),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: modelClass.length,
                  itemBuilder: (BuildContext context, int i) {
                    return GestureDetector(
                      onTap: () {
                         Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const InfoScreen()),
            );
                      },
                      child: Container(
                        margin: const EdgeInsets.only(bottom: 25),
                        height: 195,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 183, 217, 234),
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.black,
                              //offset:,
                              blurRadius: 5,
                              blurStyle: BlurStyle.outer,
                            ),
                          ],
                        ),
                        child: Stack(
                          children: [
                            Align(
                              alignment: Alignment.bottomRight,
                              child: Image.asset(
                                modelClass[i].fortImage,
                                width: 400,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomLeft,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  modelClass[i].description,
                                  style: const TextStyle(
                                      fontSize: 32,
                                      fontWeight: FontWeight.w800,
                                      color: Color.fromARGB(255, 149, 248, 235)),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
