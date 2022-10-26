import 'package:bookingtickets/utilities/app_layout.dart';
import 'package:bookingtickets/utilities/app_style.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HotelScreen extends StatelessWidget {
  final Map<String, dynamic> hotel;
  const HotelScreen({super.key, required this.hotel});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Container(
      width: size.width * 0.6,
      height: AppLayout.getHight(340),
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 17),
      margin: const EdgeInsets.only(right: 17, top: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        color: Styles.primaryColor,
        boxShadow: [
          BoxShadow(
              color: Colors.grey.shade300, spreadRadius: 5, blurRadius: 20),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: AppLayout.getHight(180),
            decoration: BoxDecoration(
              color: Styles.primaryColor,
              borderRadius: BorderRadius.circular(21),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/images/${hotel['image']}"),
              ),
            ),
          ),
          const Gap(10),
          Text(hotel['place'],
              style: Styles.headLineStyle2.copyWith(color: Styles.kakioColor)),
          const Gap(5),
          Text(hotel['destination'],
              style: Styles.headLineStyle3.copyWith(color: Styles.kakioColor)),
          const Gap(5),
          Text('\$${hotel['price']}/Night',
              style: Styles.headLineStyle1.copyWith(color: Styles.kakioColor)),
        ],
      ),
    );
  }
}
