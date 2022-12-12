import 'package:flutter/material.dart';
import 'package:tutorial/utils/app_info_list.dart';
import 'package:tutorial/utils/styles.dart';
import 'package:tutorial/widgets/column_layout.dart';
import 'package:tutorial/widgets/flight_ticket.dart';
import 'package:tutorial/widgets/ticket_tabs.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: Stack(
        children: [
          ListView(
            padding: const EdgeInsets.only(top: 20, right: 20, left: 20),
            children: [
              const SizedBox(
                height: 60,
              ),
              Text(
                "Tickets",
                style: Styles.headlineStyle1,
              ),
              const SizedBox(
                height: 20,
              ),
              const TicketTabs(tabOne: 'Upcoming', tabTwo: 'Previous'),
              const SizedBox(
                height: 20,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(21),
                  color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TicketWidget(
                      ticket: ticketList[0],
                      isColor: true,
                    ),
                    const ColumnLayoutWidgetticket(
                      firstText: "Flutter DB",
                      secondText: "Passenger",
                      ticketNumber: '5221 36486',
                      thirdText: 'passport',
                    ),
                    const ColumnLayoutWidgetticket(
                      firstText: "0055 444 77147",
                      secondText: "Number of E-ticket",
                      ticketNumber: 'B2SG28',
                      thirdText: 'Booking code',
                    ),
                    const ColumnLayoutWidgetticket(
                      firstText: "*** *** 2462",
                      secondText: "Payment method",
                      ticketNumber: '\$249.99',
                      thirdText: 'Price',
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: TicketWidget(
                    ticket: ticketList[0],
                  ),
                ),
              ),
            ],
          ),
          floatingDot(
            left: 22,
          ),
          floatingDot(
            right: 22,
          ),
        ],
      ),
    );
  }

  Positioned floatingDot({double? left, double? right}) {
    return Positioned(
      top: 295,
      left: left,
      right: right,
      child: Container(
        padding: const EdgeInsets.all(3),
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: Styles.textColor, width: 2)),
        child: CircleAvatar(
          backgroundColor: Styles.textColor,
          maxRadius: 4,
        ),
      ),
    );
  }
}
