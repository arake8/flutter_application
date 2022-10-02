import 'package:flutter/material.dart';

class PageDataList extends StatefulWidget {

  const PageDataList({Key? key}) : super(key: key);

  @override
  State<PageDataList> createState() => _MyPageDataList();
  
}

class _MyPageDataList extends State<PageDataList> {

  @override
  Widget build(BuildContext context) {

    final todo1 = ModalRoute.of(context)!.settings.arguments;
    double screenHeight = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Detail List"),
      ),
      body: Container(
        // margin: MediaQuery.of(context).padding,
        padding: const EdgeInsets.all(8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(top: screenHeight * 0.90),
            ),
            const Icon(
              Icons.flutter_dash,
              size: 40.0,
            ),
            Padding(
              padding: EdgeInsets.only(top: screenHeight * 0.20),
            ),
            Text(
              todo1.toString(),
              style: TextStyle(
                  inherit: true, color: Colors.red[300], fontSize: 40),
            )
          ],
        ),
      ),
    );
  }
}
