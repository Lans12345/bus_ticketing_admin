import 'package:bus_ticketing_admin/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class RidesTab extends StatelessWidget {
  const RidesTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: Colors.grey[200],
        child: Padding(
          padding: const EdgeInsets.only(
            left: 30,
          ),
          child: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              Align(
                  alignment: Alignment.topLeft,
                  child: BoldText(
                      label: 'Ride History',
                      fontSize: 38,
                      color: Colors.black)),
              const SizedBox(
                height: 30,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Card(
                  child: Container(
                    color: Colors.white,
                    height: 150,
                    width: 300,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              const Icon(
                                Icons.bus_alert_sharp,
                                size: 54,
                                color: Colors.black,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              BoldText(
                                  label: 'No. of Rides',
                                  fontSize: 24,
                                  color: Colors.black),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: BoldText(
                                label: '20', fontSize: 38, color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: DataTable(columns: [
                  DataColumn(
                      label: NormalText(
                          label: 'No.', fontSize: 18, color: Colors.black)),
                  DataColumn(
                      label: NormalText(
                          label: 'Name', fontSize: 18, color: Colors.black)),
                  DataColumn(
                      label: NormalText(
                          label: 'Email', fontSize: 18, color: Colors.black)),
                  DataColumn(
                      label: NormalText(
                          label: 'Address', fontSize: 18, color: Colors.black)),
                  DataColumn(
                      label: NormalText(
                          label: 'Origin', fontSize: 18, color: Colors.black)),
                  DataColumn(
                      label: NormalText(
                          label: 'Destination',
                          fontSize: 18,
                          color: Colors.black)),
                  DataColumn(
                      label: NormalText(
                          label: 'Fare', fontSize: 18, color: Colors.black)),
                ], rows: [
                  for (int i = 0; i < 50; i++)
                    DataRow(cells: [
                      DataCell(
                        NormalText(
                            label: i.toString(),
                            fontSize: 16,
                            color: Colors.grey),
                      ),
                      DataCell(
                        NormalText(
                            label: 'name', fontSize: 16, color: Colors.grey),
                      ),
                      DataCell(
                        NormalText(
                            label: 'email', fontSize: 16, color: Colors.grey),
                      ),
                      DataCell(
                        NormalText(
                            label: 'address', fontSize: 16, color: Colors.grey),
                      ),
                      DataCell(
                        NormalText(
                            label: 'origin ', fontSize: 16, color: Colors.grey),
                      ),
                      DataCell(
                        NormalText(
                            label: 'destination',
                            fontSize: 16,
                            color: Colors.grey),
                      ),
                      DataCell(
                        NormalText(
                            label: 'fare', fontSize: 16, color: Colors.grey),
                      ),
                    ])
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
