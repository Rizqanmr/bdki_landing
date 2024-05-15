import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../themes/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Stack(
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
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
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Image.asset('assets/images/img_jackone_pay.png', width: 119,),
                      Expanded(child: Container(),),
                      Icon(Icons.sticky_note_2_outlined, color: Colors.white,),
                      Icon(Icons.notifications, color: Colors.white,)
                    ],
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
