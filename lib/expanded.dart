import 'package:flutter/material.dart';

class Expandedp extends StatefulWidget {
  const Expandedp({Key? key}) : super(key: key);

  @override
  State<Expandedp> createState() => _MyExpandedpState();
}

class _MyExpandedpState extends State<Expandedp> {
  @override
  Widget build(BuildContext context) {
    double heightSC = MediaQuery.of(context).size.height / 3;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Expanded"),
        automaticallyImplyLeading: false,
        foregroundColor: Colors.yellow[600],
      ),
      body: SizedBox(
        // margin: MediaQuery.of(context).padding,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                      child: SizedBox(
                    height: heightSC / 2.2,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.green[200],
                          onPrimary: Colors.black,
                          padding: const EdgeInsets.all(0.0)),
                      onPressed: () => {},
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Image.asset(
                            'images/shout.png',
                            height: 40.0,
                            width: 40.0,
                          ),
                          const Padding(
                              padding: EdgeInsets.only(top: 2.0),
                              child: Text(
                                "Announce",
                                style: TextStyle(
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.bold),
                              ))
                        ],
                      ),
                      //parameters of Button class
                    ),
                  )),
                  const Padding(padding: EdgeInsets.only(right: 8)),
                  Expanded(
                    child: SizedBox(
                      height: heightSC / 2.2,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.green[200],
                            onPrimary: Colors.black,
                            padding: const EdgeInsets.all(0.0)),
                        onPressed: () => {},
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Image.asset(
                              'images/identification.png',
                              height: 40.0,
                              width: 40.0,
                            ),
                            const Padding(
                                padding: EdgeInsets.only(top: 2.0),
                                child: Text(
                                  "My Card",
                                  style: TextStyle(
                                      fontSize: 15.0,
                                      fontWeight: FontWeight.bold),
                                ))
                          ],
                        ),
                        //parameters of Button class
                      ),
                    ),
                  ),
                  const Padding(padding: EdgeInsets.only(right: 8)),
                  Expanded(
                    child: SizedBox(
                      height: heightSC / 2.2,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.green[200],
                            onPrimary: Colors.black,
                            padding: const EdgeInsets.all(0.0)),
                        onPressed: () => {},
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Image.asset(
                              'images/placeholder.png',
                              height: 40.0,
                              width: 40.0,
                            ),
                            const Padding(
                                padding: EdgeInsets.only(top: 2.0),
                                child: Text(
                                  "Check In/Out",
                                  style: TextStyle(
                                      fontSize: 15.0,
                                      fontWeight: FontWeight.bold),
                                ))
                          ],
                        ),
                        //parameters of Button class
                      ),
                    ),
                  )
                ],
              ),
              const Padding(padding: EdgeInsets.only(top: 8)),
              Row(
                children: [
                  Expanded(
                      child: SizedBox(
                    height: heightSC / 2.2,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.green[200],
                          onPrimary: Colors.black,
                          padding: const EdgeInsets.all(0.0)),
                      onPressed: () => {},
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Image.asset(
                            'images/clock.png',
                            height: 40.0,
                            width: 40.0,
                          ),
                          const Padding(
                              padding: EdgeInsets.only(top: 2.0),
                              child: Text(
                                "Time Stat",
                                style: TextStyle(
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.bold),
                              ))
                        ],
                      ),
                      //parameters of Button class
                    ),
                  )),
                  const Padding(padding: EdgeInsets.only(right: 8)),
                  Expanded(
                    child: SizedBox(
                      height: heightSC / 2.2,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.green[200],
                            onPrimary: Colors.black,
                            padding: const EdgeInsets.all(0.0)),
                        onPressed: () => {},
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Image.asset(
                              'images/save-money.png',
                              height: 40.0,
                              width: 40.0,
                            ),
                            const Padding(
                                padding: EdgeInsets.only(top: 2.0),
                                child: Text(
                                  "Income",
                                  style: TextStyle(
                                      fontSize: 15.0,
                                      fontWeight: FontWeight.bold),
                                ))
                          ],
                        ),
                        //parameters of Button class
                      ),
                    ),
                  ),
                  const Padding(padding: EdgeInsets.only(right: 8)),
                  Expanded(
                    child: SizedBox(
                      height: heightSC / 2.2,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.green[200],
                            onPrimary: Colors.black,
                            padding: const EdgeInsets.all(0.0)),
                        onPressed: () => {},
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Image.asset(
                              'images/qr-code.png',
                              height: 40.0,
                              width: 40.0,
                            ),
                            const Padding(
                                padding: EdgeInsets.only(top: 2.0),
                                child: Text(
                                  "Scan",
                                  style: TextStyle(
                                      fontSize: 15.0,
                                      fontWeight: FontWeight.bold),
                                ))
                          ],
                        ),
                        //parameters of Button class
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
