import 'package:bookingtickets/utilities/app_layout.dart';
import 'package:bookingtickets/utilities/app_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:gap/gap.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
          vertical: AppLayout.getHight(20),
          horizontal: AppLayout.getWidth(20),
        ),
        children: [
          Gap(
            AppLayout.getHight(40),
          ),
          Text(
            'What are \n you looking for',
            style: Styles.headLineStyle1.copyWith(fontSize: 35),
          )
        ],
      ),
    );
  }
}
