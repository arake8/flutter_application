import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

class GridViewWJ extends StatefulWidget {
  const GridViewWJ({Key? key}) : super(key: key);

  @override
  State<GridViewWJ> createState() => _MyGridViewWJState();
}

class _MyGridViewWJState extends State<GridViewWJ> {
  // double widthSC = MediaQuery.of(context).size.width / 3.3;

  

  @override
  Widget build(BuildContext context) {
    double heightSC = MediaQuery.of(context).size.height / 2.9;
    // double widthSC = MediaQuery.of(context).size.width / 3.3;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Grid View"),
        automaticallyImplyLeading: false,
        foregroundColor: Colors.yellow[600],
      ),
      body: SizedBox(
        // height: heightSC,
        // height: double.infinity,
        // margin: MediaQuery.of(context).padding,
        height: heightSC * 2.08,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: GridView.count(
                padding: const EdgeInsets.all(8),
                mainAxisSpacing: 8,
                crossAxisSpacing: 8,
                crossAxisCount: 3,
                children: _buildButtonList(6),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 8),
            ),
            Expanded(
              child: GridView.count(
                padding: const EdgeInsets.all(8),
                mainAxisSpacing: 8,
                crossAxisSpacing: 8,
                crossAxisCount: 3,
                children: _buildGridList(6),
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<Container> _buildGridList(int counts) {
    // ignore: avoid_unnecessary_containers
    return List.generate(
      counts,
      // ignore: avoid_unnecessary_containers
      (index) => Container(
        child: FadeInImage.memoryNetwork(
            placeholder: kTransparentImage,
            fit: BoxFit.cover,
            image:
                'https://www.brighttv.co.th/wp-content/uploads/2020/10/dream-goat.png'),
      ),
    );
  }

  List<SizedBox> _buildButtonList(int counts) {
    return List.generate(
        counts,
        (index) => SizedBox(
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
                              fontSize: 15.0, fontWeight: FontWeight.bold),
                        ))
                  ],
                ),
                //parameters of Button class
              ),
            ));
  }
}
