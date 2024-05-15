import 'package:bdki_landing/screen/landing_screen.dart';
import 'package:bdki_landing/themes/colors.dart';
import 'package:bdki_landing/themes/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Hide status bar
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
    // Navigate to the next screen after a delay
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => LandingScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              lightOrange,
              darkOrange,
            ],
          ),
        ),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 58.0),
                child: Image.asset('assets/images/img_splash1.png'),
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Image.asset('assets/images/img_splash2.png'),
            ),
            Align(
              alignment: Alignment.center,
              child: Image.asset('assets/images/img_jackone_pay.png'),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 68.32),
                child: Image.asset('assets/images/img_splash3.png'),
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Image.asset('assets/images/img_splash4.png'),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Image.asset('assets/images/img_ojk.png'),
                        const SizedBox(width: 23.2,),
                        Image.asset('assets/images/img_lps.png')
                      ],
                    ),
                    const SizedBox(height: 16.0,),
                    Text(
                      'powered by Bank DKI \n 2023',
                      textAlign: TextAlign.center,
                      style: regularText.copyWith(color: Colors.white),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    // Show the status bar before this page destroyed
    SystemChrome.setEnabledSystemUIMode(
        SystemUiMode.manual, overlays: SystemUiOverlay.values);
    super.dispose();
  }
}
