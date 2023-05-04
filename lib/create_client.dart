import 'package:flutter/material.dart';
import 'package:nppd_care/create_reminders.dart';
import 'package:nppd_care/create_routine.dart';

class CreateForClient extends StatefulWidget {
  const CreateForClient({Key? key}) : super(key: key);

  @override
  State<CreateForClient> createState() => _CreateForClientState();
}

class _CreateForClientState extends State<CreateForClient> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          //margin: const EdgeInsets.all(40.0),
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            /*children: [
                SizedBox(height: 5),
                Container(
                    child: Text("Create for client", style: TextStyle(fontSize: 15,fontWeight:FontWeight.bold),)

                ),
                Container(
                child : IconButton(
                    iconSize: 25.0,
                    color: Theme.of(context).primaryColor,
                    icon: Icon(Icons.calendar_month),
                    onPressed: () {}



                  ),
            Container(
                child: Text("Create/Update reminder")

            ),*/

            children: [
              const SizedBox(
                height: 60,
              ),
              TextButton(
                onPressed: () {},
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    Text(
                      'Create for client     ',
                      style: TextStyle(color: Colors.black, fontSize: 16),
                    ),
                    // <-- Text
                    SizedBox(
                      width: 20,
                    ),
                    Icon(
                      // <-- Icon
                      Icons.close,

                      color: Colors.black,
                      size: 24.0,
                    ),
                  ],
                ),
              ),
              Container(
                height: 10,
                width: 170,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: const LinearGradient(colors: [
                      Color.fromRGBO(18, 96, 230, 1),
                      Color.fromRGBO(0, 91, 21, .3),
                    ])),
              ),
              TextButton.icon(
                // <-- TextButton
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const CreateRoutine()));
                },
                icon: const Icon(
                  Icons.calendar_month,
                  size: 24.0,
                  color: Colors.black,
                ),
                label: const Text(
                  'Create/Update routine',
                  style: TextStyle(color: Colors.black),
                ),
              ),
              TextButton.icon(
                // <-- OutlinedButton
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const CreateReminder()));
                },
                icon: const Icon(
                  Icons.upload_file_outlined,
                  size: 24.0,
                  color: Colors.black,
                ),
                label: const Text('Create/Update reminder',
                    style: TextStyle(color: Colors.black)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
