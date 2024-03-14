import 'package:flutter/material.dart';

class FortScreen extends StatefulWidget {
  const FortScreen({super.key});
  @override
  State createState() => _FortScreenState();
}

class _FortScreenState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.all(20),
          child: Column(
            children: [
              const SizedBox(
                height: 60,
              ),
              Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {},
                      child: Container(
                        height: 200,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 183, 217, 234),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          children: [
                            Stack(
                              children: [
                                Row(),
                                Image.asset(
                                  "assets/fort_main_image/Vasota.jpg",
                                  fit: BoxFit.fitWidth,
                                ),
                                const Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text(
                                      "Fort",
                                      style: TextStyle(
                                          fontSize: 32,
                                          fontWeight: FontWeight.w800),
                                    ),
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
