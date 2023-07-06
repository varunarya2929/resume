import 'package:flutter/material.dart';

class ThirdpageScreen extends StatefulWidget {
  const ThirdpageScreen({super.key});

  @override
  State<ThirdpageScreen> createState() => _ThirdpageScreenState();
}

class _ThirdpageScreenState extends State<ThirdpageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            "Resume",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Column(
                children: [
                  const Text(
                    "Press the below button to download the Resume ",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                  ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.grey.shade200)),
                      onPressed: () {},
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.download,
                            color: Colors.black,
                          ),
                          Text(
                            "Download",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                          Icon(
                            Icons.download,
                            color: Colors.black,
                          )
                        ],
                      ))
                ],
              ),
            ),
          ],
        ));
  }
}
