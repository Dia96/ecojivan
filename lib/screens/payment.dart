import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';

import '../constraint.dart';

class Payment extends StatefulWidget {
  const Payment({Key? key}) : super(key: key);

  @override
  _PaymentState createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  bool _cardname = false;
  bool _isVisible = false;

  void showToast() {
    setState(() {
      _isVisible = !_isVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Payment Options'),
        flexibleSpace: Container(
          decoration: gradientdecoration,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: paddingall,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    manage,
                    style: namestyle,
                  )),
              GestureDetector(
                onTap: showToast,
                child: Card(
                  child: ListTile(
                    title: Text(addcard),
                  ),
                ),
              ),
              Visibility(
                visible: _isVisible,
                child: Card(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(entercard),
                    CheckboxListTile(
                      controlAffinity: ListTileControlAffinity.leading,
                      title: Text(usecardname),
                      value: _cardname,
                      onChanged: (value) {
                        setState(() {
                          _cardname = !_cardname;
                        });
                      },
                    ),
                    TextField(
                      decoration: InputDecoration(
                        hintText: namecard,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                      ),
                    ),
                    TextField(
                      decoration: InputDecoration(
                        hintText: numbercard,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                      ),
                    ),
                    Text('Expiry Date'),
                    Row(children: [
                      Expanded(
                        child: Row(children: <Widget>[
                          Expanded(
                            child: Padding(
                              padding: paddingtb,
                              child: DropdownSearch<String>(
                                  mode: Mode.MENU,
                                  items: [
                                    '1',
                                    '2',
                                    '3',
                                    '4',
                                    '5',
                                    '6',
                                    '7',
                                    '8',
                                    '9',
                                    '10',
                                    '11',
                                    '12'
                                  ],
                                  onChanged: print,
                                  selectedItem: month),
                            ),
                          ),
                          SizedBox(width: 20),
                          Expanded(
                            child: Padding(
                              padding: paddingtb,
                              child: DropdownSearch<String>(
                                  mode: Mode.MENU,
                                  items: [
                                    '1',
                                    '2',
                                    '3',
                                    '4',
                                    '5',
                                    '6',
                                    '7',
                                    '8',
                                    '9',
                                    '10',
                                    '11',
                                    '12'
                                  ],
                                  onChanged: print,
                                  selectedItem: year),
                            ),
                          ),
                        ]),
                      )
                    ]),
                    Align(
                      alignment: Alignment.center,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              textStyle:
                                  TextStyle(fontWeight: FontWeight.bold)),
                          onPressed: () {},
                          child: Text(addyourcard)),
                    )
                  ],
                )),
              ),
              Card(
                child: ListTile(
                  title: Text(link),
                ),
              ),
              Card(
                child: ListTile(
                  title: Text(managerefund),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
