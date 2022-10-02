// import 'dart:io';
import 'package:flutter/material.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'expanded.dart';
import 'list_view.dart';
import 'grid_view_wj.dart';
// import 'package:fluttertoast/fluttertoast.dart';

// ignore: use_key_in_widget_constructors
class Hompage extends StatefulWidget {
  const Hompage({Key? key}) : super(key: key);
  @override
  State<Hompage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Hompage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  // get _onBackPresses => null;
  late String userId, userDeviceId;

  @override
  void initState() {
    super.initState();
    _loadDataUser();
  }

  void _loadDataUser() async {
    setState(() {
      userId = "92313";
      userDeviceId = "Ts-4523664";
    });
  }

  @override
  Widget build(BuildContext context) {
    double heightSC = MediaQuery.of(context).size.height / 3;
    double widthSC = MediaQuery.of(context).size.width / 3.3;

    // Color colorTeame = Colors.white;
    Color? colorTeame =
        MediaQuery.of(context).platformBrightness == Brightness.dark
            ? Colors.black
            : null;

    // Color _bgColor = Colors.blue;

    // (MediaQuery.of(context).platformBrightness == Brightness.dark ? Colors.white : null) as Colors;

    RefreshController _refreshController =
        RefreshController(initialRefresh: false);

    void _onRefresh() async {
      // monitor network fetch
      await Future.delayed(const Duration(milliseconds: 1000));
      // if failed,use refreshFailed()
      _refreshController.refreshCompleted();
    }

    void _onLoading() async {
      // monitor network fetch
      await Future.delayed(const Duration(milliseconds: 1000));
      // if failed,use loadFailed(),if no data return,use LoadNodata()
      // items.add((items.length + 1).toString());
      // if (mounted) setState(() {});
      _refreshController.loadComplete();
    }

    return WillPopScope(
      // onWillPop: () async => false,
      // onWillPop: () async {
      //   Fluttertoast.showToast(
      //     msg: 'Some text',
      //     toastLength: Toast.LENGTH_SHORT,
      //     gravity: ToastGravity.BOTTOM,
      //     timeInSecForIosWeb: 1,
      //   );

      //   return false;
      // },
      onWillPop: _onBackPresses,
      child: Scaffold(
        key: _scaffoldKey,
        body: SmartRefresher(
          controller: _refreshController,
          enablePullDown: true,
          enablePullUp: true,
          onRefresh: _onRefresh,
          onLoading: _onLoading,
          child: Container(
            margin: MediaQuery.of(context).padding,
            padding: const EdgeInsets.all(8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Text("User: $userId"),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Text("Device ID: $userDeviceId"),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 10),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: const [
                    FlutterLogo(),
                    Text("Content Center"),
                    Text("Conten right"),
                  ],
                ),
                const Padding(padding: EdgeInsets.only(top: 10)),
                Row(
                  children: [
                    Expanded(
                      child: SizedBox(
                        height: heightSC / 2.2,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.green[200],
                            onPrimary: Colors.black,
                            padding: const EdgeInsets.all(0.0),
                          ),
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
                                color: colorTeame,
                              ),
                              const Padding(
                                padding: EdgeInsets.only(top: 2.0),
                                child: Text(
                                  "Announce",
                                  style: TextStyle(
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(right: 8),
                    ),
                    Expanded(
                      child: SizedBox(
                        height: heightSC / 2.2,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.green[200],
                            onPrimary: Colors.black,
                            padding: const EdgeInsets.all(0.0),
                          ),
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
                                color: colorTeame,
                              ),
                              const Padding(
                                padding: EdgeInsets.only(top: 2.0),
                                child: Text(
                                  "My Card",
                                  style: TextStyle(
                                      fontSize: 15.0,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          ),
                          //parameters of Button class
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(right: 8),
                    ),
                    Expanded(
                      child: SizedBox(
                        height: heightSC / 2.2,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.green[200],
                            onPrimary: Colors.black,
                            padding: const EdgeInsets.all(0.0),
                          ),
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
                                color: colorTeame,
                              ),
                              const Padding(
                                padding: EdgeInsets.only(top: 2.0),
                                child: Text(
                                  "Check In/Out",
                                  style: TextStyle(
                                      fontSize: 15.0,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          ),
                          //parameters of Button class
                        ),
                      ),
                    )
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 8),
                ),
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
                                color: colorTeame,
                              ),
                              const Padding(
                                padding: EdgeInsets.only(top: 2.0),
                                child: Text(
                                  "Time Stat",
                                  style: TextStyle(
                                      fontSize: 15.0,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          ),
                          //parameters of Button class
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(right: 8),
                    ),
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
                                color: colorTeame,
                              ),
                              const Padding(
                                padding: EdgeInsets.only(top: 2.0),
                                child: Text(
                                  "Income",
                                  style: TextStyle(
                                      fontSize: 15.0,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
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
                            padding: const EdgeInsets.all(0.0),
                          ),
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
                                color: colorTeame,
                              ),
                              const Padding(
                                padding: EdgeInsets.only(top: 2.0),
                                child: Text(
                                  "Scan",
                                  style: TextStyle(
                                      fontSize: 15.0,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          ),
                          //parameters of Button class
                        ),
                      ),
                    )
                  ],
                ),

                // SizedBox(
                //   height: widthSC * 2.08,
                //   child: Column(
                //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //     children: [
                //       Row(
                //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //         crossAxisAlignment: CrossAxisAlignment.start,
                //         mainAxisSize: MainAxisSize.max,
                //         children: [
                //           Column(children: [
                //             SizedBox(
                //               height: widthSC,
                //               width: widthSC,
                //               child: ElevatedButton(
                //                 style: ElevatedButton.styleFrom(
                //                     primary: Colors.green[200],
                //                     onPrimary: Colors.black,
                //                     padding: const EdgeInsets.all(0.0)),
                //                 onPressed: () => {},
                //                 child: Column(
                //                   mainAxisAlignment: MainAxisAlignment.center,
                //                   crossAxisAlignment:
                //                       CrossAxisAlignment.center,
                //                   mainAxisSize: MainAxisSize.max,
                //                   children: [
                //                     Image.asset(
                //                       'images/shout.png',
                //                       height: 40.0,
                //                       width: 40.0,
                //                     ),
                //                     const Padding(
                //                         padding: EdgeInsets.only(top: 2.0),
                //                         child: Text(
                //                           "Announce",
                //                           style: TextStyle(
                //                               fontSize: 15.0,
                //                               fontWeight: FontWeight.bold),
                //                         ))
                //                   ],
                //                 ),
                //                 //parameters of Button class
                //               ),
                //             ),
                //           ]),
                //           Column(children: [
                //             SizedBox(
                //               height: widthSC,
                //               width: widthSC,
                //               child: ElevatedButton(
                //                 style: ElevatedButton.styleFrom(
                //                     primary: Colors.green[200],
                //                     onPrimary: Colors.black,
                //                     padding: const EdgeInsets.all(0.0)),
                //                 onPressed: () => {},
                //                 child: Column(
                //                   mainAxisAlignment: MainAxisAlignment.center,
                //                   crossAxisAlignment:
                //                       CrossAxisAlignment.center,
                //                   mainAxisSize: MainAxisSize.max,
                //                   children: [
                //                     Image.asset(
                //                       'images/identification.png',
                //                       height: 40.0,
                //                       width: 40.0,
                //                     ),
                //                     const Padding(
                //                         padding: EdgeInsets.only(top: 2.0),
                //                         child: Text(
                //                           "My Card",
                //                           style: TextStyle(
                //                               fontSize: 15.0,
                //                               fontWeight: FontWeight.bold),
                //                         ))
                //                   ],
                //                 ),
                //                 //parameters of Button class
                //               ),
                //             ),
                //           ]),
                //           Column(children: [
                //             SizedBox(
                //               height: widthSC,
                //               width: widthSC,
                //               child: ElevatedButton(
                //                 style: ElevatedButton.styleFrom(
                //                     primary: Colors.green[200],
                //                     onPrimary: Colors.black,
                //                     padding: const EdgeInsets.all(0.0)),
                //                 onPressed: () => {},
                //                 child: Column(
                //                   mainAxisAlignment: MainAxisAlignment.center,
                //                   crossAxisAlignment:
                //                       CrossAxisAlignment.center,
                //                   mainAxisSize: MainAxisSize.max,
                //                   children: [
                //                     Image.asset(
                //                       'images/placeholder.png',
                //                       height: 40.0,
                //                       width: 40.0,
                //                     ),
                //                     const Padding(
                //                         padding: EdgeInsets.only(top: 2.0),
                //                         child: Text(
                //                           "Check In/Out",
                //                           style: TextStyle(
                //                               fontSize: 14.0,
                //                               fontWeight: FontWeight.bold),
                //                         ))
                //                   ],
                //                 ),
                //                 //parameters of Button class
                //               ),
                //             ),
                //           ]),
                //         ],
                //       ),
                //       const Padding(padding: EdgeInsets.only(top: 8)),
                //       Row(
                //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //         crossAxisAlignment: CrossAxisAlignment.start,
                //         mainAxisSize: MainAxisSize.max,
                //         children: [
                //           Column(children: [
                //             SizedBox(
                //               height: widthSC,
                //               width: widthSC,
                //               child: ElevatedButton(
                //                 style: ElevatedButton.styleFrom(
                //                     primary: Colors.green[200],
                //                     onPrimary: Colors.black,
                //                     padding: const EdgeInsets.all(0.0)),
                //                 onPressed: () => {},
                //                 child: Column(
                //                   mainAxisAlignment: MainAxisAlignment.center,
                //                   crossAxisAlignment:
                //                       CrossAxisAlignment.center,
                //                   mainAxisSize: MainAxisSize.max,
                //                   children: [
                //                     Image.asset(
                //                       'images/clock.png',
                //                       height: 40.0,
                //                       width: 40.0,
                //                     ),
                //                     const Padding(
                //                         padding: EdgeInsets.only(top: 2.0),
                //                         child: Text(
                //                           "Time Stat",
                //                           style: TextStyle(
                //                               fontSize: 15.0,
                //                               fontWeight: FontWeight.bold),
                //                         ))
                //                   ],
                //                 ),
                //                 //parameters of Button class
                //               ),
                //             ),
                //           ]),
                //           Column(children: [
                //             SizedBox(
                //               height: widthSC,
                //               width: widthSC,
                //               child: ElevatedButton(
                //                 style: ElevatedButton.styleFrom(
                //                     primary: Colors.green[200],
                //                     onPrimary: Colors.black,
                //                     padding: const EdgeInsets.all(0.0)),
                //                 onPressed: () => {},
                //                 child: Column(
                //                   mainAxisAlignment: MainAxisAlignment.center,
                //                   crossAxisAlignment:
                //                       CrossAxisAlignment.center,
                //                   mainAxisSize: MainAxisSize.max,
                //                   children: [
                //                     Image.asset(
                //                       'images/save-money.png',
                //                       height: 40.0,
                //                       width: 40.0,
                //                     ),
                //                     const Padding(
                //                         padding: EdgeInsets.only(top: 2.0),
                //                         child: Text(
                //                           "Income",
                //                           style: TextStyle(
                //                               fontSize: 15.0,
                //                               fontWeight: FontWeight.bold),
                //                         ))
                //                   ],
                //                 ),
                //                 //parameters of Button class
                //               ),
                //             ),
                //           ]),
                //           Column(children: [
                //             SizedBox(
                //               height: widthSC,
                //               width: widthSC,
                //               child: ElevatedButton(
                //                 style: ElevatedButton.styleFrom(
                //                     primary: Colors.green[200],
                //                     onPrimary: Colors.black,
                //                     padding: const EdgeInsets.all(0.0)),
                //                 onPressed: () => {},
                //                 child: Column(
                //                   mainAxisAlignment: MainAxisAlignment.center,
                //                   crossAxisAlignment:
                //                       CrossAxisAlignment.center,
                //                   mainAxisSize: MainAxisSize.max,
                //                   children: [
                //                     Image.asset(
                //                       'images/qr-code.png',
                //                       height: 40.0,
                //                       width: 40.0,
                //                     ),
                //                     const Padding(
                //                         padding: EdgeInsets.only(top: 2.0),
                //                         child: Text(
                //                           "Scan",
                //                           style: TextStyle(
                //                               fontSize: 15.0,
                //                               fontWeight: FontWeight.bold),
                //                         ))
                //                   ],
                //                 ),
                //                 //parameters of Button class
                //               ),
                //             ),
                //           ]),
                //         ],
                //       ),
                //     ],
                //   ),
                // ),
                const Padding(
                  padding: EdgeInsets.only(top: 10),
                ),
                Row(
                  children: [
                    Expanded(
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width,
                        height: 40.0,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.green[200],
                            onPrimary: Colors.black,
                            padding: const EdgeInsets.all(0.0),
                          ),
                          onPressed: () => {
                            Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const PageListView(),
                              ),
                              ModalRoute.withName('/'),
                            ),
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: const [
                              Padding(
                                padding: EdgeInsets.only(top: 2.0),
                                child: Text(
                                  "List View",
                                  style: TextStyle(
                                      fontSize: 15.0,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          ),
                          //parameters of Button class
                        ),
                      ),
                    ),
                  ],
                ),
                const Padding(padding: EdgeInsets.only(top: 10)),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width,
                        height: 40.0,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.green[200],
                            onPrimary: Colors.black,
                            padding: const EdgeInsets.all(0.0),
                          ),
                          onPressed: () => {
                            Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const GridViewWJ(),
                              ),
                              ModalRoute.withName('/'),
                            ),
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: const [
                              Padding(
                                padding: EdgeInsets.only(top: 2.0),
                                child: Text(
                                  "Grid View",
                                  style: TextStyle(
                                      fontSize: 15.0,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 10),
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: SizedBox(
                        // height: widthSC,
                        width: MediaQuery.of(context).size.width - 20,
                        height: 40.0,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.green[200],
                            onPrimary: Colors.black,
                            padding: const EdgeInsets.all(0.0),
                          ),
                          onPressed: () => {
                            // Navigator.pushAndRemoveUntil(
                            //     context,
                            //     MaterialPageRoute(
                            //         builder: (context) => const PageListView()),
                            //     ModalRoute.withName('/')),
                            Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Expandedp(),
                              ),
                              ModalRoute.withName('/'),
                            ),
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: const [
                              Padding(
                                padding: EdgeInsets.only(top: 2.0),
                                child: Text(
                                  "Expanded",
                                  style: TextStyle(
                                      fontSize: 15.0,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          ),
                          //parameters of Button class
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  // ignore: unused_element
  Future<bool> _onBackPresses() {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('ออกจากแอฟพลิเคชั่น'),
            actions: <Widget>[
              TextButton(
                onPressed: () => {
                  Navigator.pop(context, false),
                },
                child: const Text('No'),
              ),
              TextButton(
                onPressed: () => {
                  Navigator.pop(context, true),
                },
                child: const Text('Yes!'),
              )
            ],
          );
        }).then((value) => value ?? false);
  }
}
