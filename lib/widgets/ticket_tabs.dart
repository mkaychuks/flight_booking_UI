import 'package:flutter/material.dart';

class TicketTabs extends StatelessWidget {
  final String tabOne;
  final String tabTwo;
  const TicketTabs({super.key, required this.tabOne, required this.tabTwo});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(3.5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: const Color(0xfff4f6fd),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.symmetric(vertical: 7),
            width: MediaQuery.of(context).size.width * 0.44,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.horizontal(
                left: Radius.circular(50),
              ),
            ),
            child:  Text(tabOne),
          ),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.symmetric(vertical: 7),
            width: MediaQuery.of(context).size.width * 0.44,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.horizontal(
                right: Radius.circular(50),
              ),
            ),
            child:  Text(tabTwo),
          ),
        ],
      ),
    );
  }
}
