import 'package:counter_app/controller/navigationcontroller.dart';
import 'package:counter_app/models/SpendingModel.dart';
import 'package:counter_app/utils/helpers/dbHelper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class add_spending_page extends StatefulWidget {
  const add_spending_page({Key? key}) : super(key: key);

  @override
  State<add_spending_page> createState() => _add_spending_pageState();
}

class _add_spending_pageState extends State<add_spending_page> {

  NavigationController navigationController = Get.find<NavigationController>();
  late Future<List<SpendingModel>> getAllspending;

  @override
  void initState() {
    super.initState();
    getAllspending = DBHelper.dbHelper.fetchALlSpending();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: TextField(
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Search here...."
                    ),
                    onChanged: (value) async {
                      setState(() {
                        getAllspending =
                            DBHelper.dbHelper.fetchSearchspending(data: value);
                      });
                    },
                  ),
                ),
              ),
              Expanded(
                flex: 8,
                child: FutureBuilder(
                  future: getAllspending,
                  builder: (context, snapshot) {
                    if (snapshot.hasError) {
                      return Center(
                        child: Text("ERROR ${snapshot.error}"),
                      );
                    } else if (snapshot.hasData) {
                      List<SpendingModel>? data = snapshot.data;

                      if (data == null || data.isEmpty) {
                        return const Center(
                          child: Text("No Data available"),
                        );
                      } else {
                        return ListView.builder(
                          itemBuilder: (context, index) {
                            return ListTile(
                              leading: Text("${data[index].spendingId}"),
                              title: Text("${data[index].spendingDesc}"),
                              subtitle:Text("${data[index].spendingMode}") ,
                              trailing: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  IconButton(
                                    onPressed: () {
                                      Get.dialog(
                                        AlertDialog(
                                          title: const Center(
                                            child: Text(
                                              "Delete category",
                                            ),
                                          ),
                                          content: const Text(
                                              "Are you sure you want to delete this category?"),
                                          actions: [
                                            OutlinedButton(
                                              onPressed: () async {
                                                int res = await DBHelper.dbHelper
                                                    .deleteCategory(
                                                  id: data[index].spendingId!,
                                                );
                                                if (res == 1) {
                                                  setState(() {
                                                    getAllspending = DBHelper
                                                        .dbHelper
                                                        .fetchALlSpending();
                                                  });
                                                  Get.back();
                                                  Get.snackbar(
                                                    "Successfully",
                                                    "Successfully deleted",
                                                    backgroundColor: Colors.green,
                                                  );
                                                } else {
                                                  Get.back();
                                                  Get.snackbar(
                                                    snackPosition: SnackPosition.BOTTOM,
                                                    "Unsuccessfully",
                                                    "Failed to delete",
                                                    backgroundColor: Colors.red,
                                                  );
                                                }
                                              },
                                              child: const Text("Yes"),
                                            ),
                                            OutlinedButton(
                                              onPressed: () {
                                                Get.back();
                                              },
                                              child: const Text("No"),
                                            ),
                                          ],
                                        ),
                                        barrierDismissible: false,
                                      );
                                    },
                                    icon: const Icon(Icons.delete),
                                  ),
                                  IconButton(
                                    onPressed: () {
                                      // navigationController.gotAddCategory(
                                      //     data: data[index]);
                                    },
                                    icon: const Icon(Icons.edit),
                                  ),
                                ],
                              ),
                            );
                          },
                          itemCount: data.length,
                        );
                      }
                    }
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}