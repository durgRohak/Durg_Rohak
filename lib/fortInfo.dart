import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'fort_Class.dart';
import 'fort_Total.dart';

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
      body: Column(
        children: [
          const SizedBox(
            height: 45,
          ),
          Row(
            children: [
              const Padding(
                padding:
                    EdgeInsets.only(left: 10, top: 25, bottom: 10, right: 10),
              ),
              Text(
                "Hello Trekker",
                style: GoogleFonts.quicksand(
                  fontSize: 27,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
          Row(
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 90, top: 15, right: 10),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 25),
                child: Text(
                  "Lets choose Next Trip......",
                  style: GoogleFonts.quicksand(
                    fontSize: 22,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: Container(
              //color: Colors.grey,
              // margin: const EdgeInsets.only(left:10,right: 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(60),
                  color: const Color.fromARGB(255, 232, 224, 224)),
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
                        margin: const EdgeInsets.only(
                            left: 10, bottom: 15, right: 10,),
                        height: 219,
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
                                padding: const EdgeInsets.all(18.0),
                                child: Text(
                                  modelClass[i].description,
                                  style: const TextStyle(
                                      fontSize: 32,
                                      fontWeight: FontWeight.w800,
                                      color:
                                          Color.fromARGB(255, 149, 248, 235)),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
            ),
          ),
        ],
      ),
    );
  }
}
