import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:resume_app/third_page.dart';
import 'package:slider_button/slider_button.dart';
import 'package:swipeable_button_view/swipeable_button_view.dart';

class SecoundPageScreen extends StatefulWidget {
  const SecoundPageScreen({super.key});

  @override
  State<SecoundPageScreen> createState() => _SecoundPageScreenState();
}

class _SecoundPageScreenState extends State<SecoundPageScreen> {
  bool isFinished = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "About me",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          Container(
            // decoration: BoxDecoration(color: Colors.white, boxShadow: [
            //   BoxShadow(
            //       color: Colors.grey,
            //       blurRadius: 1,
            //       spreadRadius: 1,
            //       offset: Offset(5, 5)),
            // ]),
            width: 400,
            height: 400,
            child: Image.asset(
              gaplessPlayback: true, fit: BoxFit.contain,
              matchTextDirection: true,
              // color: Colors.amber,
              'assets/images/varun.jpg',
            ),
          ),
          Text("My email"),
          Text(
            "varunarya2929@gmail.com",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
                "I am Under  Graduation  (Btech (computer science)) from Sant Baba Bhagh Singh University.Currently  in 6 semester."),
          ),
          Text(
              "12 Standard (NON MEDICAL) Pass in 2020 from D.A.V.COLLEGIATE SENIOR SECONDARY SCHOOL,JALANDHAR with 62%."),
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: SwipeableButtonView(
                isFinished: isFinished,
                onFinish: () async {
                  await Navigator.push(
                      context,
                      PageTransition(
                          child: ThirdpageScreen(),
                          type: PageTransitionType.bottomToTop));
                  setState(() {
                    isFinished = false;
                  });
                },
                onWaitingProcess: () {
                  Future.delayed(Duration(seconds: 0));
                  setState(() {
                    isFinished = true;
                  });
                },
                activeColor: Colors.grey.shade200,
                buttonWidget: Container(
                  child: Icon(Icons.arrow_forward_ios_outlined),
                ),
                buttonText: "Slide to vist next screen",
                buttontextstyle: TextStyle(color: Colors.black),
              )),
          //
        ],
      ),
    );
  }
}
