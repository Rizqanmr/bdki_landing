import 'package:country_flags/country_flags.dart';
import 'package:flutter/material.dart';

class CountryCircleIcon extends StatelessWidget {
  final String countryCode;

  CountryCircleIcon({required this.countryCode});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 20,
      height: 20,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            spreadRadius: 1,
            blurRadius: 5,
            offset: Offset(0, 5), // shadow position
          ),
        ],
      ),
      child: ClipOval(
        child: CountryFlag.fromCountryCode(countryCode, width: 20, height: 20,),
      ),
    );
  }
}
