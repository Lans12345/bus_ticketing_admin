import 'package:bus_ticketing_admin/screens/home_page.dart';
import 'package:bus_ticketing_admin/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  LandingPage({super.key});

  final passConttroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/b.jpg'),
                fit: BoxFit.fitHeight),
          ),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.only(left: 800),
              child: Card(
                elevation: 10,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  height: 500,
                  width: 400,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        BoldText(
                            label: 'Hi, USER!',
                            fontSize: 38,
                            color: Colors.blue),
                        const SizedBox(
                          height: 20,
                        ),
                        const SizedBox(
                          height: 80,
                        ),
                        MaterialButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(100),
                            ),
                            minWidth: 300,
                            height: 60,
                            color: Colors.blue,
                            child: NormalText(
                                label: 'CONTINUE',
                                fontSize: 18,
                                color: Colors.white),
                            onPressed: () {
                              showDialog(
                                  context: context,
                                  builder: ((context) {
                                    return Dialog(
                                      child: Container(
                                        color: Colors.blue,
                                        height: 300,
                                        width: 300,
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            BoldText(
                                                label: 'Enter Admin Passcode',
                                                fontSize: 14,
                                                color: Colors.white),
                                            const SizedBox(
                                              height: 20,
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 30, right: 30),
                                              child: Container(
                                                color: Colors.white,
                                                child: TextFormField(
                                                  obscureText: true,
                                                  controller: passConttroller,
                                                ),
                                              ),
                                            ),
                                            const SizedBox(
                                              height: 50,
                                            ),
                                            MaterialButton(
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          100),
                                                ),
                                                minWidth: 220,
                                                height: 60,
                                                color: Colors.white,
                                                child: NormalText(
                                                    label: 'CONTINUE',
                                                    fontSize: 18,
                                                    color: Colors.blue),
                                                onPressed: () {
                                                  if (passConttroller.text ==
                                                      'admin123') {
                                                    Navigator.of(context)
                                                        .pushReplacement(
                                                            MaterialPageRoute(
                                                                builder:
                                                                    (context) =>
                                                                        const HomeScreen()));
                                                  } else {
                                                    ScaffoldMessenger.of(
                                                            context)
                                                        .showSnackBar(
                                                      const SnackBar(
                                                        duration: Duration(
                                                            seconds: 5),
                                                        content: Text(
                                                            'Passcode Incorrect!'),
                                                      ),
                                                    );
                                                    Navigator.of(context).pop();
                                                  }
                                                }),
                                          ],
                                        ),
                                      ),
                                    );
                                  }));
                            }),
                        const SizedBox(
                          height: 50,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          )),
    );
  }
}
