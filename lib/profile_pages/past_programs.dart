import 'package:flutter/material.dart';

import '../utils/button_widget.dart';
import '../utils/underscore_widget.dart';

class PastProgramScreen extends StatefulWidget {
  const PastProgramScreen({Key? key}) : super(key: key);

  @override
  State<PastProgramScreen> createState() => _PastProgramScreenState();
}

class _PastProgramScreenState extends State<PastProgramScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(206, 232, 255, 1),
      floatingActionButton: Container(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: const ButtonWidget(
          text: 'Load more',
          icon: Icons.cloud_download_outlined,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.only(left: 25,right: 25,bottom: 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20,),

              const Text(
                'Your past programs',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
              ),
              const SizedBox(
                height: 10,
              ),
              const UnderscoreWidget(),
              const SizedBox(
                height: 20,
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: 4,
                  shrinkWrap: false,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 20.0),
                      child: Container(
                        height: 250,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 20.0, vertical: 14),
                              child: Text(
                                'Weight loss program for new\nmothers',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w400),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 20.0),
                              child: Divider(
                                height: 1,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 20.0,
                                vertical: 10,
                              ),
                              child: Row(
                                children: const [
                                  Icon(Icons.person_outlined,
                                      color: Colors.lightBlue),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    'RM: Dr. Preeti Ranade',
                                    style: TextStyle(fontSize: 13),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20.0),
                              child: Row(
                                children: const [
                                  Icon(Icons.local_hospital_outlined,
                                      color: Colors.lightBlue),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    'Doctor: Dr. Srikant tiwari',
                                    style: TextStyle(fontSize: 13),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 20.0,
                                vertical: 10,
                              ),
                              child: Row(
                                children: const [
                                  Icon(Icons.arrow_circle_right_outlined,
                                      color: Colors.lightBlue),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    'Status: Stage-2',
                                    style: TextStyle(fontSize: 13),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 20.0,
                              ),
                              child: Row(
                                children: const [
                                  Icon(Icons.date_range_outlined,
                                      color: Colors.lightBlue),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    '21 Apr, 23 - 24 Apr, 23',
                                    style: TextStyle(fontSize: 13),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 20.0, vertical: 10),
                              child: Row(
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
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
