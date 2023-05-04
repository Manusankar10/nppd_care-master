import 'package:flutter/material.dart';

class FilesPage extends StatefulWidget {
  const FilesPage({Key? key}) : super(key: key);

  @override
  State<FilesPage> createState() => _FilesPageState();
}

class _FilesPageState extends State<FilesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(206, 232, 255, 1),
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            InkWell(
              child: Container(
                height: 48,
                width: 48,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  gradient: LinearGradient(
                    colors: [Colors.blueAccent, Colors.greenAccent.shade200],
                    begin: Alignment.topLeft,
                    end: Alignment.topRight,
                  ),
                ),
                child: const Icon(
                  Icons.add,
                  color: Colors.white,
                ),
              ),
              onTap: () {},
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: GridView.builder(
              itemCount: 4,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, crossAxisSpacing: 10, childAspectRatio: 1),
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.network(
                          "https://img.freepik.com/premium-vector/vector-design-element-icon-linear-style-doctor-consultation-logo-sign_163983-2225.jpg?w=2000",
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        height: 180,
                        width: 180,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          gradient: LinearGradient(
                            colors: [
                              Colors.blue.shade50,
                              Colors.greenAccent.shade200
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.topRight,
                          ),
                        ),
                        child: Container(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: Image.network(
                              "https://img.freepik.com/premium-vector/vector-design-element-icon-linear-style-doctor-consultation-logo-sign_163983-2225.jpg?w=2000",
                              fit: BoxFit.cover,
                              color: Colors.blue,
                              colorBlendMode: BlendMode.screen,
                            ),
                          ),
                        ),
                      ),
                      Center(
                        child: Icon(
                          Icons.play_circle_outline_rounded,
                          size: 58,
                          color: Colors.blue.shade200,
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
