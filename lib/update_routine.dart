import 'package:flutter/material.dart';

class UpdateRoutine extends StatefulWidget {
  const UpdateRoutine({super.key});

  @override
  State<UpdateRoutine> createState() => _UpdateRoutineState();
}

class _UpdateRoutineState extends State<UpdateRoutine> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(206, 232, 255, 1),
      appBar: AppBar(
          elevation: 0,
          backgroundColor: const Color.fromARGB(255, 206, 232, 255)),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 16),
            child: Text(
              'Update Routine Details',
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
          SizedBox(
            height: 20,
          ),
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.grey,
                width: 1,
              ),
              borderRadius: BorderRadius.circular(4),
            ),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Enter your text here",
                      border: InputBorder.none,
                    ),
                  ),
                ),
                SizedBox(width: 10),
                ElevatedButton(
                  onPressed: () {
                    // Implement save functionality here
                  },
                  child: Text("Saved"),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
