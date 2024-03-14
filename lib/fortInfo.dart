import 'package:flutter/material.dart';

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
      body: Container(
        margin: const EdgeInsets.all(20),
        child: Column(
          children: [
            const SizedBox(height: 40),
            Expanded(
              child: ListView.builder(
                itemCount: modelClass.length,
                itemBuilder: (BuildContext context, int i) {
                  return GestureDetector(
                    onTap: () {},
                    child: Container(
                      margin: const EdgeInsets.only(bottom: 40),
                      height: 200,
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
                                    color: Colors.red),
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
