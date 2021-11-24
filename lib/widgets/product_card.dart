// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:maburo/theme.dart';

class ProductCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 215,
      height: 278,
      margin: EdgeInsets.only(
        right: defaultMargin,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Color(0xffECEDEF),
      ),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        SizedBox(height: 30),
        Image.asset(
          'assets/image_running_orange.png',
          width: 215,
          height: 150,
          fit: BoxFit.cover,
        ),
        Container(
          margin: EdgeInsets.symmetric(
            horizontal: 20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Running',
                style: secondaryTextStyle.copyWith(fontSize: 12),
              ),
              SizedBox(
                height: 6,
              ),
              Text(
                'COURT VISION 2.0',
                style: blackTextStyle.copyWith(
                  fontSize: 18,
                  fontWeight: semiBold,
                ),
                overflow: TextOverflow.ellipsis,
              ),
              SizedBox(
                height: 6,
              ),
              Text(
                '\$58.67',
                style: priceTextStyle.copyWith(
                  fontWeight: semiBold,
                ),
              )
            ],
          ),
        )
      ]),
    );
  }
}