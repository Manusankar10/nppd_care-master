import 'package:flutter/material.dart';
import 'package:nppd_care/update_routine.dart';

class CreateRoutine extends StatefulWidget {
  const CreateRoutine({Key? key}) : super(key: key);

  @override
  State<CreateRoutine> createState() => _CreateRoutineState();
}

class _CreateRoutineState extends State<CreateRoutine> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(206, 232, 255, 1),
      appBar: AppBar(
          elevation: 0,
          backgroundColor: const Color.fromARGB(255, 206, 232, 255)),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 16),
              child: Text(
                'Create/Update routine',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18),
              child: Container(
                width: 80,
                height: 5,
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [
                      Color(0xff1C76E0),
                      Color(0xff41DA59),
                    ],
                  ),
                  borderRadius: BorderRadius.circular(2.5),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 50,
              width: 370,
              color: Colors.lightBlueAccent,
              child: Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: Text('Days'),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Container(
                    height: 30,
                    width: 40,
                    color: Colors.white,
                    child: const Center(child: Text('1')),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  const Text('to'),
                  const SizedBox(
                    width: 15,
                  ),
                  Container(
                    height: 30,
                    width: 40,
                    color: Colors.white,
                    child: const Center(child: Text('1')),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(children: [
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Container(
                  height: 50,
                  width: 80,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: const Center(child: Text('10.30 am')),
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              const Text('to'),
              const SizedBox(
                width: 15,
              ),
              Container(
                height: 50,
                width: 80,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: const Center(child: Text('10.30 pm')),
              ),
            ]),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Container(
                height: 100,
                width: 350,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10, top: 10),
                      child: Row(
                        children: const [
                          Text('\u2022', style: TextStyle(fontSize: 20)),
                          SizedBox(width: 10),
                          Text('Each raw mango with covering',
                              style: TextStyle(fontSize: 16)),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 10,
                      ),
                      child: Row(
                        children: const [
                          Text('\u2022', style: TextStyle(fontSize: 20)),
                          SizedBox(width: 10),
                          Text('Each Badam', style: TextStyle(fontSize: 16)),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Divider(
              color: Colors.lightBlueAccent,
              height: 40,
              thickness: 1,
              indent: 20,
              endIndent: 20,
            ),
            Container(
              height: 50,
              width: 370,
              color: Colors.lightBlueAccent,
              child: Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: Text('Days'),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Container(
                    height: 30,
                    width: 40,
                    color: Colors.white,
                    child: const Center(child: Text('2')),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  const Text('to'),
                  const SizedBox(
                    width: 15,
                  ),
                  Container(
                    height: 30,
                    width: 40,
                    color: Colors.white,
                    child: const Center(child: Text('3')),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(children: [
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Container(
                  height: 50,
                  width: 80,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: const Center(child: Text('10.30 am')),
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              const Text('to'),
              const SizedBox(
                width: 15,
              ),
              Container(
                height: 50,
                width: 80,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: const Center(child: Text('10.30 pm')),
              ),
            ]),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Container(
                height: 100,
                width: MediaQuery.of(context).size.width * 0.9,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10, top: 10),
                  child: Text(
                    'What will the client do?',
                    style: TextStyle(color: Colors.grey.shade400),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Divider(
              color: Colors.lightBlueAccent,
              height: 40,
              thickness: 1,
              indent: 20,
              endIndent: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.07,
                width: MediaQuery.of(context).size.width * 0.9,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Center(
                    child: Text(
                  '+ Add routine',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                )),
              ),
            ),
            const SizedBox(
              height: 100,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const UpdateRoutine()),
                  );
                },
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.07,
                  width: MediaQuery.of(context).size.width * 0.9,
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [
                        Color(0xff1C76E0),
                        Color(0xff41DA59),
                      ],
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Center(
                      child: Text(
                    'Update',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  )),
                ),
              ),
            ),
            const SizedBox(
              height: 80,
            ),
          ],
        ),
      ),
    );
  }
}
