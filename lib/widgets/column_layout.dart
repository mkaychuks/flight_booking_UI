import 'package:flutter/material.dart';

import '../utils/styles.dart';

class ColumnLayoutWidgetticket extends StatelessWidget {
  final String firstText;
  final String secondText;
  final String ticketNumber;
  final String thirdText;

  const ColumnLayoutWidgetticket(
      {super.key, required this.firstText, required this.secondText, required this.ticketNumber, required this.thirdText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15, bottom: 20, top: 10),
      child: Row(

        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                firstText,
                style: Styles.headlineStyle3.copyWith(color: Colors.black),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                secondText,
                style: Styles.headlineStyle4,
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                ticketNumber,
                style: Styles.headlineStyle3.copyWith(color: Colors.black),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                thirdText,
                style: Styles.headlineStyle4,
              ),
            ],
          )
        ],
      ),
    );
  }
}
