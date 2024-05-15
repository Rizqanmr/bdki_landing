import 'package:bdki_landing/themes/text_styles.dart';
import 'package:bdki_landing/widgets/image_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../themes/colors.dart';
import '../widgets/button_menu_container.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Stack(
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 32.0, horizontal: 16.0),
                  height: 196,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        lightOrange,
                        darkOrange,
                      ],
                    ),
                    borderRadius: BorderRadius.vertical(bottom: Radius.circular(55))
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Image.asset('assets/images/img_jackone_pay.png', width: 119,),
                          Expanded(child: Container(),),
                          Icon(Icons.sticky_note_2_outlined, color: Colors.white,),
                          Icon(Icons.notifications, color: Colors.white,)
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(Icons.account_circle, color: Colors.white, size: 38.0,),
                            SizedBox(width: 16,),
                            Expanded(
                                child: Text('Good Morning, \nGuest', style: largeText.copyWith(color: Colors.white),)
                            )
                          ],
                        ),
                      )
                    ],
                  )
                ),
              ),
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                  height: 82,
                  margin: const EdgeInsets.only(top: 158.0, left: 36.0, right: 36.0),
                  padding: const EdgeInsets.all(16.0),
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
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Balance Account', style: regularText,),
                          Text('Rp. 0', style: regularSemiBoldText,)
                        ],
                      ),
                      Container(
                        padding: const EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.0),
                          border: Border.all(color: Colors.yellow, width: 1),
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
                            'Top up',
                            textAlign: TextAlign.center,
                            style: mediumText.copyWith(color: Colors.white)
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 36.0, vertical: 16.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            ButtonMenuContainer(assetPath: 'assets/images/img_map.png', nameMenu: 'Extra Jakarta',),
                            ButtonMenuContainer(assetPath: 'assets/images/img_wallet.png', nameMenu: 'Top Up JakCard',),
                            ButtonMenuContainer(assetPath: 'assets/images/img_credit.png', nameMenu: 'JakCard Balance',),
                            ButtonMenuContainer(assetPath: 'assets/images/img_event.png', nameMenu: 'Event',),
                          ],
                        ),
                      ),
                      ImageSlider()
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 16.0, bottom: 8.0),
                    child: Image.asset('assets/images/img_jakcard_help.png'),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
