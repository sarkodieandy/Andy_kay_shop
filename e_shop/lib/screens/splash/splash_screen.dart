import 'package:flutter/material.dart';
import '../../constants.dart';
import '../sign_in/sign_screen.dart';
import 'components/splash_content.dart';

class SplashScreen extends StatefulWidget {
  static String routeName = "/splash";

  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final PageController _pageController = PageController(); // Step 1: Add PageController
  int currentPage = 0;

  List<Map<String, String>> splashData = [
    {
      "text": "Welcome to GAF Shop! Your ultimate shopping destination.",
      "image": "assets/images/splash_7.gif"
    },
    {
      "text":
          "Connecting soldiers to stores across the Ghana Armed Forces with ease.",
      "image": "assets/images/splash_8.gif"
    },
    {
      "text":
          "Experience stress-free shopping. \nRelax at home while we deliver to you.",
      "image": "assets/images/splash_9.gif"
    }
  ];

  @override
  void dispose() {
    _pageController.dispose(); // Step 4: Dispose the PageController
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            children: <Widget>[
              Expanded(
                flex: 3,
                child: PageView.builder(
                  controller: _pageController, // Step 2: Add controller to PageView
                  onPageChanged: (value) {
                    setState(() {
                      currentPage = value;
                    });
                  },
                  itemCount: splashData.length,
                  itemBuilder: (context, index) => SplashContent(
                    image: AssetImage(splashData[index]["image"]!),
                    text: splashData[index]['text']!,
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: <Widget>[
                      const Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(
                          splashData.length,
                          (index) => AnimatedContainer(
                            duration: kAnimationDuration,
                            margin: const EdgeInsets.only(right: 8),
                            height: 8,
                            width: currentPage == index ? 24 : 8,
                            decoration: BoxDecoration(
                              color: currentPage == index
                                  ? kPrimaryColor
                                  : const Color(0xFFD8D8D8),
                              borderRadius: BorderRadius.circular(4),
                            ),
                          ),
                        ),
                      ),
                      const Spacer(flex: 2),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(
                              vertical: 16, horizontal: 32),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          backgroundColor: kPrimaryColor,
                          textStyle: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        onPressed: () {
                          if (currentPage == splashData.length - 1) {
                            // Navigate to Sign In screen
                            Navigator.pushNamed(context, SignScreen.routeName);
                          } else {
                            // Step 3: Use PageController to move to next page
                            _pageController.animateToPage(
                              currentPage + 1,
                              duration: const Duration(milliseconds: 300),
                              curve: Curves.easeInOut,
                            );
                          }
                        },
                        child: Text(
                          currentPage == splashData.length - 1
                              ? "Get Started"
                              : "Next",
                        ),
                      ),
                      const Spacer(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

