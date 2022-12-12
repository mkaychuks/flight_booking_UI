import 'package:flutter/material.dart';
import 'package:tutorial/utils/app_info_list.dart';
import 'package:tutorial/widgets/flight_ticket.dart';
import 'package:tutorial/widgets/hotel_card.dart';

import '../utils/styles.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              // main column that houses the entire page
              children: [
                const SizedBox(
                  height: 40,
                ),
                Row(
                  // First row in the layout
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Good Morning',
                          style: Styles.headlineStyle3,
                        ),
                        const SizedBox(
                          height: 5.0,
                        ),
                        Text(
                          'Book Tickets',
                          style: Styles.headlineStyle1,
                        ),
                      ],
                    ),
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          image: const DecorationImage(
                              image: AssetImage("assets/images/ifeanyi.jpg"),
                              fit: BoxFit.cover)),
                    )
                  ],
                ),
                const SizedBox(
                  height: 25,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      prefixIcon: const Icon(
                        Icons.search,
                        color: Color(0xffbfc205),
                      ),
                      hintText: 'Search',
                      hintStyle: Styles.headlineStyle4,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide.none),
                      contentPadding: const EdgeInsets.all(12),
                      fillColor: const Color(0xfff4f6fd),
                      filled: true),
                ),
                const SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Upcoming Flights',
                      style: Styles.headlineStyle2,
                    ),
                    InkWell(
                      child: Text(
                        'View all',
                        style: Styles.textStyle
                            .copyWith(color: Styles.primaryColor),
                      ),
                      onTap: () {},
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              children: ticketList.map((singleTicket) => TicketWidget(ticket: singleTicket)).toList()
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Hotels',
                  style: Styles.headlineStyle2,
                ),
                InkWell(
                  child: Text(
                    'View all',
                    style:
                        Styles.textStyle.copyWith(color: Styles.primaryColor),
                  ),
                  onTap: () {},
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              children: hotelList.map((singleHotel) => HotelCard(hotel: singleHotel,)).toList()
            ),
          ),
        ],
      ),
    );
  }
}
