import 'package:flutter/material.dart';
import 'package:tutorial/widgets/circular_container.dart';

import '../utils/styles.dart';

class TicketWidget extends StatelessWidget {
  final Map<String, dynamic> ticket;
  final bool? isColor;
  const TicketWidget({super.key, required this.ticket, this.isColor});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width*0.85,
      height: 200,
      child: Container(
        margin: const EdgeInsets.only(right: 16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            /*
              showing the blue part of our ticket
            */
            Container(
              decoration:  BoxDecoration(
                  color: isColor == null ? const Color(0xff526799) : Colors.white,
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(21),
                      topRight: Radius.circular(21))),
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        ticket['from']['code'],
                        style:
                            isColor == null? Styles.headlineStyle3.copyWith(color: Colors.white) : Styles.headlineStyle3,
                      ),
                      const Spacer(),
                      const CircularContainer(isColor: true,),
                      Expanded(
                        child: Stack(
                          children: [
                            SizedBox(
                              height: 24,
                              child: LayoutBuilder(
                                builder: (BuildContext context,
                                    BoxConstraints constraints) {
                                  return Flex(
                                    direction: Axis.horizontal,
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: List.generate(
                                      (constraints.constrainWidth() / 6)
                                          .floor(),
                                      (index) =>  SizedBox(
                                        width: 3,
                                        height: 1,
                                        child: DecoratedBox(
                                          decoration: BoxDecoration(
                                              color:isColor==null? Colors.white : Colors.green.shade300),
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                            Center(
                              child: Transform.rotate(
                                angle: 1.5,
                                child: Icon(
                                  Icons.local_airport_rounded,
                                  color: isColor==null? Colors.white : Colors.grey.shade300,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const CircularContainer(isColor: true,),
                      const Spacer(),
                      Text(
                        ticket['to']['code'],
                        style:
                            isColor==null? Styles.headlineStyle3.copyWith(color: Colors.white): Styles.headlineStyle3,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 1,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        ticket['from']['name'],
                        style:
                            isColor==null? Styles.headlineStyle4.copyWith(color: Colors.white): Styles.headlineStyle4,
                      ),
                      Text(
                        ticket['flying_time'],
                        style:
                            isColor==null? Styles.headlineStyle4.copyWith(color: Colors.white) : Styles.headlineStyle4,
                      ),
                      Text(
                        ticket['to']['name'],
                        textAlign: TextAlign.end,
                        style:
                            isColor==null ? Styles.headlineStyle4.copyWith(color: Colors.white): Styles.headlineStyle4,
                      )
                    ],
                  ),
                ],
              ),
            ),
            /*
              showing the orange of our ticket
            */
            Container(
              color: isColor == null?  const Color(0xfff37b67) : Colors.white,
              child: Row(
                children: [
                  const SizedBox(
                    height: 20,
                    width: 10,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                          ),
                          color: Colors.white),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: LayoutBuilder(
                        builder:
                            (BuildContext context, BoxConstraints constraints) {
                          return Flex(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            mainAxisSize: MainAxisSize.max,
                            direction: Axis.horizontal,
                            children: List.generate(
                              (constraints.constrainWidth() / 15).floor(),
                              (index) =>  SizedBox(
                                width: 5,
                                height: 1,
                                child: DecoratedBox(
                                  decoration:
                                      BoxDecoration(color: isColor ==null? Colors.white : Colors.grey.shade300),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                    width: 10,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                          ),
                          color: Colors.white),
                    ),
                  )
                ],
              ),
            ),
            // bottom part of the ticket
            Container(
              decoration:  BoxDecoration(
                  color: isColor==null? const Color(0xfff37b67) : Colors.white,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(isColor==null?21:0),
                      bottomRight: Radius.circular(isColor==null?21:0))),
              padding: const EdgeInsets.only(left:16.0, top: 10, right: 16, bottom: 16),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            ticket['date'],
                            style: isColor==null? Styles.headlineStyle3
                                .copyWith(color: Colors.white) : Styles.headlineStyle3,
                          ),
                          const SizedBox(height: 5,),
                          Text(
                            'Date',
                            style: isColor==null? Styles.headlineStyle4
                                .copyWith(color: Colors.white) : Styles.headlineStyle4,
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            ticket['departure_time'],
                            style: isColor==null? Styles.headlineStyle3
                                .copyWith(color: Colors.white) : Styles.headlineStyle3,
                          ),
                          const SizedBox(height: 5,),
                          Text(
                            'Departure time',
                            style: isColor==null? Styles.headlineStyle4
                                .copyWith(color: Colors.white): Styles.headlineStyle4,
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            ticket['number'].toString(),
                            style: isColor == null? Styles.headlineStyle3
                                .copyWith(color: Colors.white) : Styles.headlineStyle3,
                          ),
                          const SizedBox(height: 5,),
                          Text(
                            'Number',
                            style: isColor==null? Styles.headlineStyle4
                                .copyWith(color: Colors.white):Styles.headlineStyle4,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
