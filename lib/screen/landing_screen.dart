import 'package:bdki_landing/widgets/bottom_navbar.dart';
import 'package:bdki_landing/themes/colors.dart';
import 'package:bdki_landing/themes/text_styles.dart';
import 'package:bdki_landing/widgets/country_circle.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';

class LandingScreen extends StatefulWidget {
  const LandingScreen({super.key});

  @override
  State<LandingScreen> createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(
            statusBarColor: Colors.transparent,
            statusBarIconBrightness: Brightness.dark
        )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          spreadRadius: 0,
                          blurRadius: 3,
                          offset: const Offset(0, 5), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CountryCircleIcon(countryCode: 'id'),
                        const SizedBox(width: 10,),
                        CountryCircleIcon(countryCode: 'gb')
                      ],
                    ),
                  ),
                  Container(
                    width: 61,
                    height: 20,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          spreadRadius: 0,
                          blurRadius: 3,
                          offset: const Offset(0, 5), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset('assets/images/img_credit_card.png'),
                        const SizedBox(width: 5,),
                        Image.asset('assets/images/img_jakcard.png')
                      ],
                    ),
                  )
                ],
              ),
              Container(
                margin: const EdgeInsets.only(top: 100, bottom: 16, left: 50, right: 50),
                child: ClipRRect(
                  child: Image.asset('assets/images/img_monas.png', fit: BoxFit.cover,),
                ),
              ),
              Text(
                'Explore Jakarta with Jakarta Tourist Pass',
                textAlign: TextAlign.center,
                style: mediumText.copyWith(foreground: Paint()..shader = textGradient),
              ),
              const SizedBox(height: 38,),
              GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const BottomNavbar()),
                  );
                },
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 37.5),
                  padding: const EdgeInsets.symmetric(vertical: 6.5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25.0),
                    border: Border.all(color: Colors.yellow, width: 2),
                    gradient: const LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        darkOrange,
                        lightOrange,
                      ],
                    ),
                  ),
                  child: Text(
                      'Continue as a Guest',
                      textAlign: TextAlign.center,
                      style: extraLargeText.copyWith(color: Colors.white)
                  ),
                ),
              ),
              const SizedBox(height: 16,),
              GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const BottomNavbar()),
                  );
                },
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 37.5),
                  padding: const EdgeInsets.symmetric(vertical: 6.5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25.0),
                    border: const GradientBoxBorder(
                        gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [Colors.yellow, lightRed]
                        ),
                        width: 2
                    ),
                  ),
                  child: Text(
                      'Continue as a Guest',
                      textAlign: TextAlign.center,
                      style: extraLargeText.copyWith(color: lightRed)
                  ),
                ),
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: Image.asset('assets/images/img_jakcard_help.png'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
