import 'package:flutter/material.dart';
import 'package:nppd_care/chat_tab_bar.dart';
import 'package:nppd_care/utils/add_button_widget.dart';
import 'package:nppd_care/utils/underscore_widget.dart';

class HomeMenu extends StatefulWidget {
  const HomeMenu({Key? key}) : super(key: key);

  @override
  State<HomeMenu> createState() => _HomeMenuState();
}

class _HomeMenuState extends State<HomeMenu> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromRGBO(206, 232, 255, 1),
        floatingActionButton: Padding(
          padding: const EdgeInsets.only(right: 8.0, bottom: 4),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              InkWell(
                borderRadius: BorderRadius.circular(25),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ChatTabBarPage(),
                    ),
                  );
                },
                child: const AddButtonWidget(),
              ),
            ],
          ),
        ),
        body: Container(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Attention',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 22),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        UnderscoreWidget(),
                      ],
                    ),
                    Container(
                      height: 40,
                      width: 60,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [Colors.orange, Colors.orange.shade200],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        //color: Colors.orange.shade500,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(
                            Icons.notifications_outlined,
                            color: Colors.white,
                            size: 20,
                          ),
                          SizedBox(
                            width: 2,
                          ),
                          Text(
                            '12+',
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                // Attention Payment card
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 25, vertical: 12),
                  height: 230,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Colors.orange.shade100, Colors.white],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          const Text(
                            'Weight loss program for new\nmothers',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w400),
                          ),
                          Expanded(child: Container()),
                          IconButton(
                            icon: Container(
                              foregroundDecoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                gradient: LinearGradient(
                                  colors: [
                                    Colors.blueAccent,
                                    Colors.greenAccent.shade200
                                  ],
                                ),
                                backgroundBlendMode: BlendMode.screen,
                              ),
                              child: const Icon(Icons.cancel),
                            ),
                            iconSize: 32,
                            color: Colors.black,
                            onPressed: () {
                              // Navigator.of(context).pop();
                            },
                          ),
                        ],
                      ),
                      const Divider(
                        height: 20,
                      ),
                      Row(
                        children: const [
                          Icon(Icons.person_outlined, color: Colors.lightBlue),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'RM: Dr. Preeti Ranade',
                            style: TextStyle(fontSize: 14),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Row(
                        children: const [
                          Icon(Icons.local_hospital_outlined,
                              color: Colors.lightBlue),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Doctor: Dr. Srikant tiwari',
                            style: TextStyle(fontSize: 14),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Row(
                        children: const [
                          Icon(Icons.arrow_circle_right_outlined,
                              color: Colors.lightBlue),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Status: Stage-2',
                            style: TextStyle(fontSize: 14),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: const [
                          Text(
                            'Complete payment to activate',
                            style: TextStyle(
                              color: Colors.redAccent,
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(
                            Icons.arrow_forward,
                            color: Colors.redAccent,
                          )
                        ],
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Active Programs',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    UnderscoreWidget(),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                // Active Programs Card
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                  height: 260,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Weight loss program for new\nmothers',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w400),
                      ),
                      const Divider(
                        height: 20,
                      ),
                      Row(
                        children: const [
                          Icon(Icons.person_outlined, color: Colors.lightBlue),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'RM: Dr. Preeti Ranade',
                            style: TextStyle(fontSize: 14),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Row(
                        children: const [
                          Icon(Icons.local_hospital_outlined,
                              color: Colors.lightBlue),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Doctor: Dr. Srikant tiwari',
                            style: TextStyle(fontSize: 14),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Row(
                        children: const [
                          Icon(Icons.arrow_circle_right_outlined,
                              color: Colors.lightBlue),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Status: Stage-2',
                            style: TextStyle(fontSize: 14),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Row(
                        children: const [
                          Icon(Icons.date_range_outlined,
                              color: Colors.lightBlue),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            '21 Apr, 23 - 24 Apr, 23',
                            style: TextStyle(fontSize: 14),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 18,
                      ),
                      Row(
                        children: const [
                          Text(
                            'See details',
                            style: TextStyle(
                              color: Colors.lightBlue,
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(
                            Icons.arrow_forward,
                            color: Colors.lightBlue,
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
