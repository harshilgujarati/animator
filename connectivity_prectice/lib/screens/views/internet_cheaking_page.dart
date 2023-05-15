import 'package:connectivity_prectice/controllers/providers/connectivity_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class internet_cheaking_page extends StatefulWidget {
  const internet_cheaking_page({Key? key}) : super(key: key);

  @override
  State<internet_cheaking_page> createState() => _internet_cheaking_pageState();
}

class _internet_cheaking_pageState extends State<internet_cheaking_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Internet cheak page"),
      ),
      body: (Provider.of<ConnectivityProvider>(context)
                  .connectivityModel
                  .ConnectivityStatus ==
              "waiting")
          ? Center(
              child: Text(
                "Offline",
                style: TextStyle(fontSize: 24),
              ),
            )
          : Center(
              child: Text(
                "Status : ${Provider.of<ConnectivityProvider>(context).connectivityModel.ConnectivityStatus}",
                style: TextStyle(fontSize: 24),
              ),
            ),
    );
  }
}
