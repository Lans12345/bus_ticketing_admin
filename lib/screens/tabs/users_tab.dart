import 'package:bus_ticketing_admin/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class UsersTab extends StatelessWidget {
  const UsersTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Padding(
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
                    label: 'User Management',
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
                              Icons.person,
                              size: 54,
                              color: Colors.black,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            BoldText(
                                label: 'No. of Users',
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
          ],
        ),
      ),
    );
  }
}
