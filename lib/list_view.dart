import 'package:flutter/material.dart';
import 'show_data_lists.dart';

// ignore: use_key_in_widget_constructors
class PageListView extends StatefulWidget {
  const PageListView({Key? key}) : super(key: key);
  @override
  State<PageListView> createState() => _MyListViewState();
}

class _MyListViewState extends State<PageListView> {
  @override
  Widget build(BuildContext context) {

    final List<String> items =
        List<String>.generate(20, (index) => "Item ${++index}");

    // final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();


    return Scaffold(
      appBar: AppBar(
        title: const Text("List View"),
        titleSpacing: 100,
        centerTitle: true,
        automaticallyImplyLeading: false,
        foregroundColor: Colors.yellow[600],
        shadowColor: Colors.white,
      ),
      body: SizedBox(
          // margin: MediaQuery.of(context).padding,
          child: ListView.separated(
            itemCount: items.length,
            // ignore: unnecessary_string_interpolations
            itemBuilder: (context, index) => ListTile(
              leading: const Icon(Icons.flutter_dash),
              title: Text(items[index]),
              subtitle: const Text("subtitle"),
              trailing: const Icon(Icons.access_alarm),
              onTap: () => {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const PageDataList(),
                        settings: RouteSettings(arguments: items[index]))),
              },
            ),
            separatorBuilder: (context, index){
              return const Divider(
                indent: 1,
                height: 8,
              );
            },
          )),
    );
  }
}
