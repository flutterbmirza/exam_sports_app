import 'package:exam_sports_app/screens/login.dart';
import 'package:flutter/material.dart';

class OnBoardingPAge extends StatefulWidget {
  const OnBoardingPAge({Key? key}) : super(key: key);

  @override
  State<OnBoardingPAge> createState() => _OnBoardingPAgeState();
}

class _OnBoardingPAgeState extends State<OnBoardingPAge> {

  @override
  void initState() {
    super.initState();
    onNextPage();
  }
  onNextPage(){
    Future.delayed(Duration(seconds: 3),(){
      Navigator.push(context, MaterialPageRoute(builder: (context)=>Login()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/img_1.png"),
            fit: BoxFit.cover
          )
        ),
      ),

    );
  }
}
