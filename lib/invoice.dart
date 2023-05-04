// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Invoice extends StatefulWidget {
  const Invoice({super.key});

  @override
  State<Invoice> createState() => _InvoiceState();
}

class _InvoiceState extends State<Invoice> {
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        body: Container(
          height: media.height,
          width: media.width,
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 16,
                ),
                child: Text(
                  "Cares app pvt. ltd",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: Text("PAN: CALPP8393J"),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 1),
                    child: Text(
                      "Tax Invoice",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Text(
                  "331/1946-B Road Number 6 Chandrasekharpur",
                  style: TextStyle(fontSize: 12),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Text(
                  "Bhubaneswar Odisha 751016",
                  style: TextStyle(fontSize: 12),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Text(
                  "India",
                  style: TextStyle(fontSize: 12),
                ),
              ),
              Divider(
                thickness: 3,
                color: Colors.grey.shade400,
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: Text(
                      "#: INV-000001",
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 16),
                    child: Text(
                      "Terms: Due on Reciept",
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: Text(
                      "Invoice Date: 28/04/2023",
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 16),
                    child: Text(
                      "Due Date: 28/04/2023",
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Divider(
                thickness: 3,
                color: Colors.grey.shade400,
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: Text(
                      "Bill To",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 90),
                    child: Text(
                      "Ship to",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: Text(
                      "Mr. Rehan Azad",
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 47),
                    child: Text(
                      "Mr.Rehan Azad",
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Text(
                  "Duplex No.#44, ahalaya Hill Resorts,",
                  style: TextStyle(fontSize: 12),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Text(
                  "Pathara Gadia, Infocity, Patia",
                  style: TextStyle(fontSize: 12),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Text(
                  "Bhubneswar 751024 Odisha, India",
                  style: TextStyle(fontSize: 12),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Table(
                children: [
                  TableRow(children: [
                    Container(
                      margin: EdgeInsets.only(left: 4, right: media.width / 30),
                      decoration: BoxDecoration(color: Colors.grey.shade300),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            "#",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text("Item & Description",
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          SizedBox(
                            width: 40,
                          ),
                          Text("Qty",
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          Text("Rate",
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          Text("Amount",
                              style: TextStyle(fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                  ]),
                  TableRow(children: [
                    Container(
                      margin: EdgeInsets.only(top: 3, right: media.width / 11),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            "1",
                            style: TextStyle(fontSize: 12),
                          ),
                          Text(
                            "Weight loss program for mothers",
                            style: TextStyle(fontSize: 12),
                          ),
                          Text(
                            "1",
                            style: TextStyle(fontSize: 12),
                          ),
                          Text(
                            "2999",
                            style: TextStyle(fontSize: 12),
                          ),
                          Text(
                            "2999",
                            style: TextStyle(fontSize: 12),
                          ),
                        ],
                      ),
                    )
                  ]),
                  TableRow(children: [
                    Container(
                      margin: EdgeInsets.only(left: 4, right: media.width / 30),
                      child: Divider(
                        thickness: 2,
                        color: Colors.grey.shade300,
                      ),
                    )
                  ]),
                  TableRow(children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 50),
                          child: Container(
                              child: Text(
                            "GST(18%)",
                            style: TextStyle(fontSize: 12),
                          )),
                        ),
                        SizedBox(
                          width: 170,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Container(
                            child: Text("539", style: TextStyle(fontSize: 12)),
                          ),
                        )
                      ],
                    )
                  ]),
                  TableRow(children: [
                    Container(
                      margin: EdgeInsets.only(left: 4, right: media.width / 30),
                      child: Divider(
                        thickness: 2,
                        color: Colors.grey.shade300,
                      ),
                    )
                  ]),
                  TableRow(children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 50),
                          child: Container(
                              child: Text(
                            "Total payable",
                            style: TextStyle(fontSize: 12),
                          )),
                        ),
                        SizedBox(
                          width: 150,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Container(
                            child: Text("3539", style: TextStyle(fontSize: 12)),
                          ),
                        )
                      ],
                    )
                  ]),
                  TableRow(children: [
                    Container(
                      margin: EdgeInsets.only(left: 4, right: media.width / 30),
                      child: Divider(
                        thickness: 2,
                        color: Colors.grey.shade300,
                      ),
                    )
                  ]),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Center(
                child: Text(
                  "Thank you for your order",
                  style: TextStyle(
                    color: Colors.grey.shade400,
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
