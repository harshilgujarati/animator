import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:invoice_generator_app/models/modals.dart';
import 'package:printing/printing.dart';
import '../../utils/globals.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

class BillPage extends StatefulWidget {
  @override
  _BillPageState createState() => _BillPageState();
}

class _BillPageState extends State<BillPage> {
  TextEditingController _nameController = TextEditingController();
  TextEditingController _quantityController = TextEditingController();
  TextEditingController _priceController = TextEditingController();

  String? Item_name;
  int? Quantity;
  final pdf = pw.Document();

  Future<void> generatePDF() async {
    final fonts = await PdfGoogleFonts.nunitoExtraLight();
    final imagelogo = await networkImage(
        "https://thumbs.dreamstime.com/b/letter-h-logo-design-red-color-h-letter-icon-logo-h-square-shape-h-logo-square-shape-letter-h-logo-design-red-color-h-121994137.jpg");
    pw.Document pdf = pw.Document();

    pdf.addPage(
      pw.Page(
        pageTheme: pw.PageTheme(
          buildBackground: (pw.Context context) => pw.FullPage(
            ignoreMargins: true,
            child: pw.Container(
              height: double.infinity,
              width: double.infinity,
              alignment: pw.Alignment.center,
              child: pw.Padding(
                padding: pw.EdgeInsets.all(16),
                child: pw.Column(
                  crossAxisAlignment: pw.CrossAxisAlignment.start,
                  children: [
                    pw.Row(
                      mainAxisAlignment: pw.MainAxisAlignment.start,
                      children: [
                        pw.Image(imagelogo as pw.ImageProvider,
                            height: 90, width: 90),
                      ],
                    ),
                    pw.Row(
                      children: [
                        pw.SizedBox(width: 10),
                        pw.Column(
                          crossAxisAlignment: pw.CrossAxisAlignment.start,
                          children: [
                            pw.Text(
                              'Pramukh Invoice Maker\n\n',
                              style: pw.TextStyle(
                                font: fonts,
                                fontSize: 20,
                                fontWeight: pw.FontWeight.bold,
                                color: PdfColors.green,
                              ),
                            ),
                            pw.Text(
                                'Address : 1209,Vedant Market,Near Mussa Gali,'),
                            pw.Text('Mota Varachha,Surat,Gujarat.\n\n'),
                            pw.Text('Pincode : ${pincode}'),
                          ],
                        ),
                      ],
                    ),
                    pw.SizedBox(height: 20),
                    // Add heading with color line
                    pw.Row(
                      children: [
                        pw.Container(
                          height: 3,
                          width: 215,
                          color: PdfColors.grey,
                        ),
                        pw.SizedBox(width: 10),
                        pw.Text('Your Invoice',
                            style: pw.TextStyle(
                                fontSize: 20,
                                color: PdfColors.green,
                                fontWeight: pw.FontWeight.bold)),
                        pw.SizedBox(width: 10),
                        pw.Container(
                          height: 3,
                          width: 220,
                          color: PdfColors.grey,
                        ),
                        pw.SizedBox(width: 10),
                      ],
                    ),
                    pw.SizedBox(height: 20),
                    pw.Text(
                      "Your Name : ${Name}\n",
                      style: pw.TextStyle(
                        fontWeight: pw.FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    pw.Text(
                      "Mobile : ${monumber}\n",
                      style: pw.TextStyle(
                        fontWeight: pw.FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    pw.Text(
                      "Email : ${email}\n",
                      style: pw.TextStyle(
                        fontWeight: pw.FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    pw.Text(
                      "Pincode : ${pincode}",
                      style: pw.TextStyle(
                        fontWeight: pw.FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    pw.SizedBox(height: 14),
                    pw.Row(
                      mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                      children: [
                        pw.Text(
                          'Invoice No: 123',
                          style: pw.TextStyle(fontSize: 18,fontWeight: pw.FontWeight.bold,),
                        ),
                        pw.Text(
                          'Date: ${DateTime.now().toString()}',
                          style: pw.TextStyle(fontSize: 18,fontWeight: pw.FontWeight.bold,),
                        ),
                      ],
                    ),
                    pw.SizedBox(height: 20),
                    pw.Container(
                        color: PdfColors.green300,
                        child: pw.Row(
                          children: [
                            pw.Expanded(
                              child: pw.Text(
                                '  No.',
                                style: pw.TextStyle(
                                    fontWeight: pw.FontWeight.bold),
                              ),
                            ),
                            pw.Expanded(
                              flex: 2,
                              child: pw.Text(
                                'Item Name',
                                style: pw.TextStyle(
                                    fontWeight: pw.FontWeight.bold),
                              ),
                            ),
                            pw.Expanded(
                              child: pw.Text(
                                'Price',
                                style: pw.TextStyle(
                                    fontWeight: pw.FontWeight.bold),
                              ),
                            ),
                            pw.Text(
                              'Qty',
                              style:
                                  pw.TextStyle(fontWeight: pw.FontWeight.bold),
                            ),
                            pw.SizedBox(width: 150),
                            pw.Expanded(
                              child: pw.Text(
                                'Total',
                                style: pw.TextStyle(
                                    fontWeight: pw.FontWeight.bold),
                              ),
                            ),
                          ],
                        )),
                    pw.ListView.builder(
                      itemCount: Globals.All_Items.length,
                      spacing: 6,
                      itemBuilder: (contex, i) => pw.Row(
                        children: [
                          pw.Expanded(
                            child: pw.Text("${i + 1}."),
                          ),
                          pw.Expanded(
                            flex: 2,
                            child: pw.Text("${Globals.All_Items[i].itemname}"),
                          ),
                          pw.Expanded(
                            child: pw.Text("${Globals.All_Items[i].Price}"),
                          ),
                          pw.Text("${Globals.All_Items[i].quantity}"),
                          pw.SizedBox(width: 150),
                          pw.Expanded(
                            child: pw.Text("${Globals.All_Items[i].total}"),
                          ),
                        ],
                      ),
                    ),
                    pw.Container(
                      color: PdfColors.orange300,
                      child: pw.Row(
                        children: [
                          pw.Expanded(
                            child: pw.Text(
                              '   Total Price',
                              style: pw.TextStyle(
                                  fontWeight: pw.FontWeight.bold, fontSize: 13),
                            ),
                          ),
                          pw.SizedBox(width: 406),
                          pw.Expanded(
                            child: pw.Text(
                              '${Items.AllTotal}',
                              style: pw.TextStyle(
                                  fontWeight: pw.FontWeight.bold, fontSize: 13),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        build: (pw.Context context) => pw.Column(
          // mainAxisAlignment: cv.MainAxisAlignment.start
          // crossAxisAlignment: cv.CrossAxisAlignment.end,
          children: [
            pw.Row(),
          ],
        ),
      ),
    );
    Uint8List data = await pdf.save();
    await Printing.layoutPdf(
      onLayout: (format) => data,
    );
  }

  int? price;

  GlobalKey<FormState> fromkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Create Invoice',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 28,
            color: Colors.black,
          ),
        ),
        backgroundColor: Color.fromRGBO(25, 157, 117, 100),
        actions: [
          IconButton(
            icon: Icon(
              Icons.print,
              size: 40,
              color: Colors.black,
            ),
            onPressed: () {
              setState(() {
                generatePDF();
              });
            },
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(16),
            child: Form(
              key: fromkey,
              child: Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      controller: _nameController,
                      textInputAction: TextInputAction.next,
                      onSaved: (v) {
                        Item_name = v;
                      },
                      validator: (v) {
                        if (v!.isEmpty) {
                          return "Enter Item Name";
                        } else {
                          return null;
                        }
                      },
                      decoration: InputDecoration(
                        labelText: 'Item Name',
                        labelStyle: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  SizedBox(width: 16),
                  Expanded(
                    child: TextFormField(
                      controller: _quantityController,
                      textInputAction: TextInputAction.next,
                      onSaved: (v) {
                        Quantity = int.parse(v!);
                      },
                      validator: (v) {
                        if (v!.isEmpty) {
                          return "Enter Quantity";
                        } else {
                          return null;
                        }
                      },
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        labelText: 'Quantity',
                        labelStyle: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  SizedBox(width: 16),
                  Expanded(
                    child: TextFormField(
                      controller: _priceController,
                      onSaved: (v) {
                        price = int.parse(v!);
                      },
                      validator: (v) {
                        if (v!.isEmpty) {
                          return "Enter Prize";
                        } else {
                          return null;
                        }
                      },
                      keyboardType: TextInputType.numberWithOptions(
                        decimal: true,
                      ),
                      decoration: InputDecoration(
                        labelText: 'Price',
                        labelStyle: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  SizedBox(width: 16),
                ],
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'item Name',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.green),
              ),
              SizedBox(
                width: 50,
              ),
              Text(
                'Quantity',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.green),
              ),
              SizedBox(
                width: 90,
              ),
              Text(
                'Total',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.green),
              ),
              SizedBox(
                width: 20,
              )
            ],
          ),
          Expanded(
            child: ListView.builder(
              itemCount: Globals.All_Items.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Text(
                    '${Globals.All_Items[index].itemname}\nPrize : ${Globals.All_Items[index].Price}',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  title: Text(
                    '                ${Globals.All_Items[index].quantity}',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  trailing: Text(
                    '₹${Globals.All_Items[index].total}',
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                );
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () {
                  setState(() {
                    Globals.All_Items.clear();
                    Items.AllTotal = 0;
                  });
                },
                icon: Icon(
                  Icons.delete,
                  size: 40,
                  color: Colors.black,
                ),
              ),
              IconButton(
                onPressed: () {
                  setState(() {
                    if (fromkey.currentState!.validate()) {
                      fromkey.currentState!.save();

                      Items i = Items(
                          itemname: Item_name,
                          quantity: Quantity!,
                          Price: price!);
                      Globals.All_Items.add(Items(
                          itemname: Item_name,
                          quantity: Quantity!,
                          Price: price!));

                      _nameController.clear();
                      _priceController.clear();
                      _quantityController.clear();

                      Item_name = null;
                      Quantity = null;
                      price = null;
                    }
                    for (int i = 0; i < Globals.All_Items.length; i++) {
                      Items.Total = Globals.All_Items[i].Price *
                          Globals.All_Items[i].quantity;
                      Items.AllTotal = Items.AllTotal + Items.Total;
                    }
                  });
                },
                icon: Icon(
                  Icons.done,
                  size: 40,
                ),
              ),
            ],
          ),
          Container(
            height: 65,
            color: Color.fromRGBO(25, 157, 117, 0.7),
            child: ListTile(
              title: Text(
                'Total:',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),
              trailing: Text(
                '${Items.AllTotal}',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
