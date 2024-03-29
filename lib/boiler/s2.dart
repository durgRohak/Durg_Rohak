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
      //  backgroundColor: const Color.fromARGB(255, 9, 9, 9),
      body: Container(
        margin: const EdgeInsets.only(
          left: 10,
          right: 10,
        ),
        color: Colors.black,
        child: Column(
          children: [
            // const SizedBox(height: 10),
            Container(
              //  height: 100,
              width: double.maxFinite,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                  color: Colors.red),
              child: Text(
                "Durga-Rohak",
                style:
                    GoogleFonts.lato(fontSize: 27, fontWeight: FontWeight.w700),
              ),
            ),
            const SizedBox(
              height: 1,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: modelClass.length,
                itemBuilder: (BuildContext context, int i) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const InfoScreen()),
                      );
                    },
                    child: Container(
                      margin: const EdgeInsets.only(bottom: 25),
                      height: 195,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 183, 217, 234),
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: const [
                          BoxShadow(
                            color: Color.fromARGB(255, 26, 25, 25),
                            offset: Offset(0, 2),
                            blurRadius: 7,
                            // blurStyle: BlurStyle.outer,
                          ),
                        ],
                      ),
                      child: Stack(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset(
                              modelClass[i].fortImage,
                              width: double.maxFinite,
                              height: double.maxFinite,
                              fit: BoxFit.fill,
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
    );
  }
}
