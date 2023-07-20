import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:invoice_generator_app/utils/globals.dart';

class newinvoice extends StatefulWidget {
  const newinvoice({Key? key}) : super(key: key);

  @override
  State<newinvoice> createState() => _newinvoiceState();
}

class _newinvoiceState extends State<newinvoice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: mainappbar,
      body: Padding(
        padding: normalpadding.padding,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        Navigator.of(context).pushNamed('createinvoice');
                      });
                    },
                    child: Container(
                      height: 200,
                      width: 150,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          IconButton(
                            onPressed: () {
                              setState(() {
                                Navigator.of(context)
                                    .pushNamed('createinvoice');
                              });
                            },
                            icon: Icon(
                              Icons.add,
                              size: 90,
                              color: Colors.green,
                            ),
                          ),
                        ],
                      ),
                      decoration: BoxDecoration(
                        color: Colors.green.shade50,
                        borderRadius: BorderRadius.all(
                          Radius.circular(30),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        Navigator.of(context).pushNamed('userdetails');
                      });
                    },
                    child: Container(
                      height: 200,
                      width: 150,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          IconButton(
                            onPressed: () {
                              setState(() {
                                Navigator.of(context)
                                    .pushNamed('userdetails');
                              });
                            },
                            icon: Icon(
                              Icons.person,
                              size: 90,
                              color: Colors.blue,
                            ),
                          ),
                        ],
                      ),
                      decoration: BoxDecoration(
                        color: Colors.blue.shade50,
                        borderRadius: BorderRadius.all(
                          Radius.circular(30),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 4,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    ('     New Bill'),
                    style: TextStyle(fontSize: 20,color: Colors.green,fontWeight: FontWeight.bold),
                  ),
                  Text(
                    ('              Your Account'),
                    style: TextStyle(fontSize: 20,color: Colors.blue,fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        notchMargin: 8.0,
        elevation: 100,
        height: 100,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ElevatedButton(
              onPressed: () {
                setState(() {
                  Get.back();
                });
              },
              child: Icon(
                Icons.logout,
              ),
              style: ButtonStyle(
                minimumSize: MaterialStateProperty.all(
                  Size(140, 100),
                ),
                foregroundColor: MaterialStateProperty.all(Colors.white),
                backgroundColor:
                    MaterialStateProperty.all(Colors.grey.shade500),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  //todo: create setting page
                });
              },
              child: Icon(
                Icons.settings,
              ),
              style: ButtonStyle(
                minimumSize: MaterialStateProperty.all(
                  Size(140, 100),
                ),
                foregroundColor: MaterialStateProperty.all(Colors.white),
                backgroundColor:
                    MaterialStateProperty.all(Colors.grey.shade500),
              ),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: SizedBox(
        width: 100,
        height: 100,
        child: FloatingActionButton(
          onPressed: () {
            setState(() {
              Navigator.of(context)
                  .pushNamed('createinvoice');
            });
          },
          child: Icon(
            Icons.add,
            size: 68,
            color: Colors.green.shade900,
          ),
          backgroundColor: Colors.green.shade100,
          shape: CircleBorder(
            side: BorderSide(
              width: 3,
              color: Colors.green,
            ),
          ),
        ),
      ),
    );
  }
}
