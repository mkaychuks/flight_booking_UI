import 'package:flutter/material.dart';
import 'package:tutorial/utils/styles.dart';
import 'package:tutorial/widgets/column_layout.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: const EdgeInsets.only(top: 40, left: 20, right: 20),
        children: [
          const SizedBox(
            height: 40,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 76,
                height: 76,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: const DecorationImage(
                      image: AssetImage("assets/images/ifeanyi.jpg"),
                      fit: BoxFit.cover),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Book tickets",
                    style: Styles.headlineStyle1,
                  ),
                  Text(
                    "New-York",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey.shade500),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Container(
                    padding: const EdgeInsets.all(3),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: const Color(0xfffef4f3)),
                    child: Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(3),
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle, color: Color(0xff526799)),
                          child: const Icon(
                            Icons.shield,
                            color: Colors.white,
                            size: 15,
                          ),
                        ),
                        const SizedBox(
                          width: 6,
                        ),
                        const Text(
                          'Premium status',
                          style: TextStyle(
                            color: Color(0xff526799),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              const Spacer(),
              Column(
                children: [
                  Text(
                    "Edit",
                    style: Styles.textStyle.copyWith(
                        color: Styles.primaryColor,
                        fontWeight: FontWeight.w300),
                  ),
                ],
              ),
            ],
          ),
        
        const SizedBox(
            height: 8,
          ),
         Divider(color: Colors.grey.shade300,),
       const SizedBox(height: 8,),
        Stack(
          alignment: Alignment.center,
          children: [
            // background container
            Container(
              height: 90,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Styles.primaryColor,
                borderRadius: BorderRadius.circular(18)
              ),
            ),
          // underlying circle
          Positioned(
            right: -45,
            top: -40,
            child: Container(
              padding: const EdgeInsets.all(30),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(width: 18, color: const Color(0xff264cd2)),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.white,
                  maxRadius: 25,
                  child: Icon(Icons.lightbulb_outline, color: Styles.primaryColor, size: 27,),
                ),
                const SizedBox(width: 12,),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("You've got a new reward", style: Styles.headlineStyle2.copyWith(fontWeight: FontWeight.bold, color: Colors.white),),
                    Text("You have 95 flights in a year", style: Styles.headlineStyle2.copyWith(fontWeight: FontWeight.w500, color: Colors.white.withOpacity(0.9), fontSize: 16),),
                  ],
                ),
              ],
            ),
          ),
          
          ],
        ),
        const SizedBox(height: 25,),
        Text('Accumulated miles', style: Styles.headlineStyle2,),
        const SizedBox(height: 30,),
        Text('192802', textAlign: TextAlign.center, style: Styles.headlineStyle1.copyWith(fontSize: 35, letterSpacing: 2),),
        const ColumnLayoutWidgetticket(firstText: '23 042', secondText: 'Miles', ticketNumber: 'Arline CO', thirdText: 'Received from'),
        const ColumnLayoutWidgetticket(firstText: '24', secondText: 'Miles', ticketNumber: "MacDonald's", thirdText: 'Received from'),
        const ColumnLayoutWidgetticket(firstText: '52 340', secondText: 'Miles', ticketNumber: "Exuma", thirdText: 'Received from'),
        Text('How to get more miles', textAlign: TextAlign.center, style: Styles.headlineStyle4.copyWith(letterSpacing: 0.5)),
        
        
        
        
        
        
        
        ],
      ),
    );
  }
}
