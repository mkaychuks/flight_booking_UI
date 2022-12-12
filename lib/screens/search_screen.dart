import 'package:flutter/material.dart';
import 'package:tutorial/utils/styles.dart';
import 'package:tutorial/widgets/double_text_widget.dart';
import 'package:tutorial/widgets/text_input_field.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          children: [
            const SizedBox(
              height: 30,
            ),
            Text(
              'What are\nyou looking for?',
              style: Styles.headlineStyle1.copyWith(fontSize: 35),
            ),
            const SizedBox(
              height: 25,
            ),
            Container(
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
                    child: const Text("Airline tickets"),
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
                    child: const Text("Hotels"),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            const TextInputFieldWidget(
                hintText: 'Departure',
                prefixIcon: Icons.flight_takeoff_rounded),
            const SizedBox(
              height: 10,
            ),
            const TextInputFieldWidget(
                hintText: 'Arrival', prefixIcon: Icons.flight_land_rounded),
            const SizedBox(
              height: 25,
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xd91130ce),
                padding: const EdgeInsets.all(16.0),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0)),
                textStyle: Styles.textStyle,
                elevation: 0.0,
              ),
              child: const Text('Find tickets'),
            ),
            const SizedBox(
              height: 25,
            ),
            const DoubleTextWidget(
                bigText: 'Upcoming flights', smallText: 'View all'),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                firstContainerInRow(context),
                Column(
                  children: [
                    stackedBoxesOnTop(context),
                    const SizedBox(
                      height: 15,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.44,
                      height: 210,
                      padding: const EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: const Color(0xffec6545),
                      ),
                      child: Column(
                        children: [
                          Text(
                            'Take a look',
                            textAlign: TextAlign.center,
                            style: Styles.headlineStyle2.copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  Stack stackedBoxesOnTop(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: MediaQuery.of(context).size.width * 0.44,
          height: 200,
          decoration: BoxDecoration(
            color: const Color(0xff3ab8b8),
            borderRadius: BorderRadius.circular(18),
          ),
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Discount\nfor survey",
                style: Styles.headlineStyle2
                    .copyWith(fontWeight: FontWeight.bold, color: Colors.white),
              ),
              Text(
                "Take the survey about our services and get discount",
                style: Styles.headlineStyle2.copyWith(
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                    fontSize: 18),
              ),
            ],
          ),
        ),
        Positioned(
          top: -40,
          right: -45,
          child: Container(
            width: 100,
            height: 100,
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
                border: Border.all(
                  color: const Color.fromARGB(255, 57, 157, 61),
                  width: 20,
                ),
                borderRadius: BorderRadius.circular(100)),
          ),
        ),
      ],
    );
  }

  Container firstContainerInRow(BuildContext context) {
    return Container(
      height: 425,
      width: MediaQuery.of(context).size.width * 0.42,
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          Container(
            height: 190,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              image: const DecorationImage(
                  image: AssetImage("assets/images/hotel4.jpg"),
                  fit: BoxFit.cover),
            ),
          ),
          Text(
            '20% discount on the eearly booking of this flight, Don\'t miss out this chance',
            style: Styles.headlineStyle2.copyWith(fontSize: 18),
          ),
        ],
      ),
    );
  }
}
