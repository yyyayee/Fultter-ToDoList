import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'home_screen.dart';

class IntroScreen extends StatelessWidget {
  IntroScreen({super.key});

  final List<PageViewModel> pages = [
    PageViewModel(
        title: 'Talk In A New Way',
        body:
            'Open your new speaking experience here. Then you will find more colorful meetings.',
        footer: Column(
          children: [
            SizedBox(
              height: 45,
              width: 150,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    elevation: 8,
                    backgroundColor: const Color.fromARGB(255, 231, 255, 249),
                  ),
                  onPressed: () {},
                  child: const Text("Let's begin")),
            ),
          ],
        ),
        image: Image.network(
            'https://media.istockphoto.com/id/1377637277/video/teamwork-and-brainstorming-concept-animation-people-think-talk-and-looking-for-new-bright.jpg?s=640x640&k=20&c=v7TWAYl5EyeDgE1qhmk5VDHpjFnuoILW2LjSt1kkmM4='),
        decoration: const PageDecoration(
            titleTextStyle: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold,
        ))),
    PageViewModel(
        title: 'Colorful Meeting',
        body:
            'Open your new speaking experience here. Then you will find more colorful meetings.',
        footer: Column(
          children: [
            SizedBox(
              height: 45,
              width: 150,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    elevation: 8,
                    backgroundColor: const Color.fromARGB(255, 231, 255, 249),
                  ),
                  onPressed: () {},
                  child: const Text("Let's begin")),
            ),
          ],
        ),
        image: Image.network(
            'https://media.istockphoto.com/id/1411321556/video/office-workers-characters-animation-co-working-space-team-work-colleagues-woman-working-at.jpg?s=640x640&k=20&c=cg-gkSbw6ceoVyYuiSVq86I1LYnU5eVfxJPrDhnSxGQ='),
        decoration: const PageDecoration(
            titleTextStyle: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold,
        ))),
    PageViewModel(
        title: "Let's Get Started !",
        body:
            'Open your new speaking experience here. Then you will find more colorful meetings.',
        footer: Column(
          children: [
            SizedBox(
              height: 45,
              width: 150,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    elevation: 8,
                    backgroundColor: const Color.fromARGB(255, 231, 255, 249),
                  ),
                  onPressed: () {},
                  child: const Text("Let's begin")),
            ),
          ],
        ),
        image: Image.network(
            'https://t3.ftcdn.net/jpg/03/72/28/14/360_F_372281485_OI5JwznrbNokXFmLjEpAfGsZiN7sj7Kx.jpg'),
        decoration: const PageDecoration(
            titleTextStyle: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold,
        ))),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('On Boarding'),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 255, 196, 216),
      ),
      body: IntroductionScreen(
        globalBackgroundColor: const Color.fromARGB(255, 255, 229, 248),
        pages: pages,
        showSkipButton: true,
        skip: const Text('Skip'),
        showDoneButton: true,
        done: const Text('Done'),
        showNextButton: true,
        next: const Icon(
          Icons.arrow_forward,
          size: 25,
        ),
        onDone: () => onDone(context),
        curve: Curves.bounceOut,
        dotsDecorator: const DotsDecorator(
          size: Size(15, 15),
          color: Color.fromARGB(255, 190, 63, 240),
          activeColor: Color.fromARGB(255, 248, 86, 140),
          activeSize: Size.square(20),
        ),
      ),
    );
  }

  void onDone(context) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('ON_BOARDING',
        false); //เมื่อกด done จะไม่โชว์หน้า onboarding อีกและเปลี่ยนค่าเป็น false
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => HomeScreen(),
      ),
    );
  }
}
