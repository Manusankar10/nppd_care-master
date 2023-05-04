import 'package:flutter/material.dart';
import 'package:nppd_care/create_reminders.dart';
import 'package:nppd_care/create_routine.dart';
import 'package:nppd_care/utils/utils.dart';
import 'models/lifecycle_model.dart';
import 'utils/add_button_widget.dart';
import 'utils/cancel_button_widget.dart';
import 'utils/underscore_widget.dart';

class LifeCyclePage extends StatefulWidget {
  const LifeCyclePage({Key? key}) : super(key: key);

  @override
  State<LifeCyclePage> createState() => _LifeCyclePageState();
}

class _LifeCyclePageState extends State<LifeCyclePage> {
  @override
  Widget build(BuildContext context) {
    List<LifecycleModel> listModel = Utils.getMockedCategories();

    return Scaffold(
      backgroundColor: const Color.fromRGBO(206, 232, 255, 1),
      floatingActionButton: Padding(
        padding:
        const EdgeInsets.symmetric(horizontal: 25.0, vertical: 25),
        child: InkWell(
          borderRadius: BorderRadius.circular(25),
          onTap: () {
            showModalBottomSheet(
              context: context,
              builder: (context) {
                return Container(
                  padding: const EdgeInsets.all(25),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment:
                            CrossAxisAlignment.start,
                            children: const [
                              Text(
                                "Create for client",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              UnderscoreWidget(),
                            ],
                          ),
                          Expanded(child: Container()),
                          const CancelButtonWidget()
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Column(
                        children: [
                          InkWell(
                            borderRadius: BorderRadius.circular(12),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                  const CreateRoutine(),
                                ),
                              );
                            },
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 8.0),
                              child: Row(
                                children: const [
                                  Icon(Icons.calendar_month_outlined),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    'Create/Update routine',
                                    style: TextStyle(fontSize: 16),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                  const CreateReminder(),
                                ),
                              );
                            },
                            borderRadius: BorderRadius.circular(12),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 8.0),
                              child: Row(
                                children: const [
                                  Icon(Icons.file_open_outlined),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    'Create/Update reminder',
                                    style: TextStyle(fontSize: 16),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                );
              },
            );
          },
          child: const AddButtonWidget(),
        ),
      ),

      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
                itemCount: listModel.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 14.0, horizontal: 25),
                    child: Container(
                      padding: const EdgeInsets.all(25),
                      height: 180,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.white,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            listModel[index].topicName,
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const Divider(
                            height: 25,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              const Icon(
                                Icons.arrow_circle_right_outlined,
                                color: Colors.lightBlue,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(
                                listModel[index].statusName,
                                style: const TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: const [
                              Text(
                                'See details',
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.lightBlue),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Icon(
                                Icons.arrow_forward_outlined,
                                color: Colors.lightBlue,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
