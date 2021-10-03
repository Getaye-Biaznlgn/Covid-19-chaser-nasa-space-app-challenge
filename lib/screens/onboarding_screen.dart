import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../utilities/styles.dart';
import '../model/onboard_data.dart';
import '../widgets/widgets.dart';
import './education_page.dart';
// import 'package:dots_indicator/dots_indicator.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key key}) : super(key: key);
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final int _numPages = 4;
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;
  Color kPrimaryColor = const Color(0xffFC9D45);
  Color kSecondaryColor = const Color(0xff573353);

  List<Widget> _buildPageIndicator() {
    List<Widget> list = [];
    for (int i = 0; i < _numPages; i++) {
      list.add(i == _currentPage ? dotIndicator(true) : dotIndicator(false));
    }
    return list;
  }

  AnimatedContainer dotIndicator(index) {
    return AnimatedContainer(
        margin: const EdgeInsets.only(right: 5),
        duration: const Duration(milliseconds: 400),
        height: 12,
        width: 12,
        decoration: BoxDecoration(
          color: _currentPage == index ? Colors.blueAccent : Colors.blueAccent,
          shape: BoxShape.circle,
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 9,
              child: PageView.builder(
                controller: _pageController,
                onPageChanged: (value) {
                  setState(() {
                    _currentPage = value;
                  });
                },
                itemCount: onboardingContents.length,
                itemBuilder: (context, index) => Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      onboardingContents[index].title,
                      //style: kTitle,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontFamily: 'Klasik',
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        color: Colors.blueAccent,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                      child: SizedBox(
                        height: 400,
                        child: Image.asset(
                          onboardingContents[index].image,
                          height: 400,
                          width: 400,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
                flex: 1,
                child: Column(
                  children: [
                    _currentPage == onboardingContents.length - 1
                        ? MyTextButton(
                            buttonName: 'Get Started',
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const EducationPage()));
                            },
                            bgColor: Colors.blueAccent,
                            //kPrimaryColor,
                          )
                        : Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                                OnBoardNavBtn(
                                    name: 'Skip',
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const EducationPage()));
                                    }),
                                Row(
                                    children: List.generate(
                                  onboardingContents.length,
                                  (index) => dotIndicator(index),
                                )),
                                OnBoardNavBtn(
                                    name: 'Next',
                                    onPressed: () {
                                      _pageController.nextPage(
                                        duration:
                                            const Duration(milliseconds: 400),
                                        curve: Curves.easeInOut,
                                      );
                                    }),
                              ])
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
