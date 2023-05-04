import 'package:flutter/material.dart';

class PersonalDetails extends StatefulWidget {
  const PersonalDetails({super.key});

  @override
  State<PersonalDetails> createState() => _PersonalDetailsState();
}

class _PersonalDetailsState extends State<PersonalDetails> {
  TextEditingController bioController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(206, 232, 255, 1),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color.fromRGBO(206, 232, 255, 1),
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 16, right: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Your personal details',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                width: 96,
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
              const SizedBox(
                height: 20,
              ),
              const Text('Name'),
              const SizedBox(
                height: 10,
              ),
              TextField(
                decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 15, horizontal: 10),
                    border: const OutlineInputBorder(),
                    hintText: 'Enter your name',
                    hintStyle: const TextStyle(fontSize: 16),
                    constraints: BoxConstraints(
                      maxHeight: MediaQuery.of(context).size.height * 0.5,
                      maxWidth: MediaQuery.of(context).size.width * 400 / 2,
                    )),
                style: const TextStyle(fontSize: 16),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text('Email'),
              const SizedBox(
                height: 10,
              ),
              TextField(
                decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 15, horizontal: 10),
                    border: const OutlineInputBorder(),
                    hintText: 'abcd@gmail.com',
                    hintStyle: const TextStyle(fontSize: 16),
                    constraints: BoxConstraints(
                      maxHeight: MediaQuery.of(context).size.height * 0.5,
                      maxWidth: MediaQuery.of(context).size.width * 400 / 2,
                    )),
                style: const TextStyle(fontSize: 16),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text('Gender'),
              const SizedBox(
                height: 10,
              ),
              TextField(
                decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 15, horizontal: 10),
                    border: const OutlineInputBorder(),
                    hintText: 'Type here',
                    hintStyle: const TextStyle(fontSize: 16),
                    constraints: BoxConstraints(
                      maxHeight: MediaQuery.of(context).size.height * 0.5,
                      maxWidth: MediaQuery.of(context).size.width * 400 / 2,
                    )),
                style: const TextStyle(fontSize: 16),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text('Date of birth'),
              const SizedBox(
                height: 10,
              ),
              TextField(
                decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 15, horizontal: 10),
                    border: const OutlineInputBorder(),
                    hintText: 'Type here',
                    hintStyle: const TextStyle(fontSize: 16),
                    constraints: BoxConstraints(
                      maxHeight: MediaQuery.of(context).size.height * 0.5,
                      maxWidth: MediaQuery.of(context).size.width * 400 / 2,
                    )),
                style: const TextStyle(fontSize: 16),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text('Bio'),
              const SizedBox(
                height: 10,
              ),
              Container(
                  height: MediaQuery.of(context).size.height * 0.15,
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: const TextField(
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      contentPadding: EdgeInsets.symmetric(
                          vertical: 40.0, horizontal: 16.0),
                      border: OutlineInputBorder(),
                    ),
                  )),
              Container(
                height: MediaQuery.of(context).size.height * 0.08,
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
