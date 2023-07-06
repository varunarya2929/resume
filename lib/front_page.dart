import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:resume_app/secound_page.dart';
import 'package:slider_button/slider_button.dart';
import 'package:swipeable_button_view/swipeable_button_view.dart';

class FrontScreen extends StatefulWidget {
  const FrontScreen({super.key});

  @override
  State<FrontScreen> createState() => _FrontScreenState();
}

class _FrontScreenState extends State<FrontScreen> {
  bool isFinished = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // centerTitle: true,
        backgroundColor: Colors.white10,
        title: const Text(
          " Welcome to My Resume App",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
        ),
      ),
      body: Column(
        children: [
          const Text(
            "My Self",
            style: TextStyle(fontSize: 25),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "Varun Arya",
              style: TextStyle(fontSize: 38, fontWeight: FontWeight.bold),
            ),
          ),

          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "I am Student of Btech (cse). So that’s why I am not have any Experience But in my 45 days industrial Training. ",
              style: TextStyle(fontSize: 25),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "I am created a Application by using Flutter.The Application name is EVENT BOOK It is basically Used to add user upcoming Events to remembering the Event and Add for Per Events",
              style: TextStyle(fontSize: 25),
            ),
          ),
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: SwipeableButtonView(
                // isActive: true,
                isFinished: isFinished,
                onFinish: () async {
                  await Navigator.push(
                      context,
                      PageTransition(
                          child: SecoundPageScreen(),
                          type: PageTransitionType.fade));
                  setState(() {
                    isFinished = false;
                  });
                },
                onWaitingProcess: () {
                  Future.delayed(Duration(seconds: 0), () {
                    setState(() {
                      isFinished = true;
                    });
                  });
                },
                activeColor: Colors.grey.shade200,
                buttonWidget: Container(
                  child: Icon(Icons.arrow_forward_ios_outlined),
                ),
                buttonText: "Slide to vist next screen",
                indicatorColor: AlwaysStoppedAnimation<Color>(Colors.white),
                buttontextstyle: TextStyle(color: Colors.black),
              )),

          // Image(image: )
        ],
      ),
    );
  }
}
