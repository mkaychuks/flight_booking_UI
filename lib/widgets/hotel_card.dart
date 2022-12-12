import 'package:flutter/material.dart';

import '../utils/styles.dart';

class HotelCard extends StatelessWidget {
  final Map<String, dynamic> hotel;
  const HotelCard({super.key, required this.hotel});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.6,
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 17),
      margin: const EdgeInsets.only(right: 20),
      height: 350,
      decoration: BoxDecoration(
        color: Styles.primaryColor,
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
              color: Colors.grey.shade200, blurRadius: 2, spreadRadius: 1),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 180,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.0),
              color: Styles.primaryColor,
              image:  DecorationImage(
                  image: AssetImage("assets/images/${hotel['image']}"),
                  fit: BoxFit.cover),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            hotel['place'],
            style: Styles.headlineStyle2.copyWith(color: Styles.kakiColor),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            hotel['destination'],
            style: Styles.headlineStyle3.copyWith(color: Colors.white),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            "\$${hotel['price']}/night",
            style: Styles.headlineStyle1.copyWith(color: Styles.kakiColor),
          ),
        ],
      ),
    );
  }
}
