import 'package:dropdown_search/dropdown_search.dart';
import 'package:ecojivan/constraint.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:multiselectchipgroup/multiselectchipgroup.dart';

class RegistrationTwo extends StatefulWidget {
  @override
  _RegistrationTwoState createState() => _RegistrationTwoState();
}

class _RegistrationTwoState extends State<RegistrationTwo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: decoration,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: SingleChildScrollView(
            //child: Center(
            child: Padding(
              padding: paddingall,
              // child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [

                   Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 5, right: 10),
                  child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        looking,
                        style: namestyle,
                      )),
                ),
                MultiSelectChipGroup(
                  labelFontSize: 16,
                  items: [health, diab, obese, hyper, pcos, stress],
                  onSelectionChanged: (values) {
                    print(values);
                  },
                  horizontalChipSpacing: 10,
                  selectedColor: Colors.green,
                  disabledColor: Colors.white,
                  leftCommonIcon: Icons.perm_identity,
                  leftIcons: [
                    Icons.alarm,
                    Icons.ac_unit,
                    Icons.accessibility,
                    Icons.account_balance,
                    Icons.perm_identity,
                    Icons.perm_identity,
                  ],
                ),
                  // Align(
                  //     alignment: Alignment.topLeft,
                  //     child: Text(
                  //       infohealth,
                  //       style: namestyle,
                  //     )),

                   

                  // Row(children: [
                  //   Expanded(
                  //     child: Row(children: <Widget>[
                  //       Expanded(
                  //         child: Padding(
                  //           padding: paddingtb,
                  //           child: DropdownSearch<String>(
                  //               mode: Mode.MENU,
                  //               items: [
                  //                 "110cm",
                  //                 "120cm",
                  //                 "130cm",
                  //                 '140cm',
                  //                 "150cm",
                  //                 "160cm",
                  //                 "170cm",
                  //                 '180cm'
                  //               ],
                  //               label: height,
                  //               onChanged: print,
                  //               selectedItem: selectheight),
                  //         ),
                  //       ),
                  //       SizedBox(width: 20),
                  //       Expanded(
                  //         child: Padding(
                  //           padding: paddingtb,
                  //           child: DropdownSearch<String>(
                  //               mode: Mode.MENU,
                  //               items: [
                  //                 "30kg",
                  //                 "31Kg",
                  //                 "32Kg",
                  //                 '33Kg',
                  //                 "34Kg",
                  //                 "35Kg",
                  //                 "36Kg",
                  //                 '37Kg',
                  //                 "38kg",
                  //                 "39Kg",
                  //                 "40Kg",
                  //                 '41Kg',
                  //                 "42Kg",
                  //                 "43Kg",
                  //                 "44Kg",
                  //                 '45Kg'
                  //               ],
                  //               label: weight,
                  //               selectedItem: selectweight),
                  //         ),
                  //       ),
                  //     ]),
                  //   ),
                  // ]),
                  // Padding(
                  //   padding: const EdgeInsets.only(top: 20, bottom: 15),
                  //   child: DropdownSearch<String>(
                  //       mode: Mode.MENU,
                  //       items: [
                  //         "110cm",
                  //         "120cm",
                  //         "130cm",
                  //         '140cm',
                  //         "150cm",
                  //         "160cm",
                  //         "170cm",
                  //         '180cm'
                  //       ],
                  //       label: height,
                  //       onChanged: print,
                  //       selectedItem: selectheight),
                  // ),
                  // Padding(
                  //   padding: paddingtb,
                  //   child: DropdownSearch<String>(
                  //       mode: Mode.MENU,
                  //       items: [
                  //         "30kg",
                  //         "31Kg",
                  //         "32Kg",
                  //         '33Kg',
                  //         "34Kg",
                  //         "35Kg",
                  //         "36Kg",
                  //         '37Kg'
                  //             "38kg",
                  //         "39Kg",
                  //         "40Kg",
                  //         '41Kg',
                  //         "42Kg",
                  //         "43Kg",
                  //         "44Kg",
                  //         '45Kg'
                  //       ],
                  //       label: weight,
                  //       selectedItem: selectweight),
                  // ),
                  // Padding(
                  //   padding: paddingtb,
                  //   child: DropdownSearch<String>(
                  //       mode: Mode.MENU,
                  //       items: [
                  //         "14",
                  //         "15",
                  //         "16",
                  //         '17',
                  //         "18",
                  //         "19",
                  //         "20",
                  //         '21',
                  //         "22",
                  //         "23",
                  //         "24",
                  //         '25',
                  //         "26",
                  //         "27",
                  //         "28",
                  //         '29'
                  //       ],
                  //       label: age,
                  //       selectedItem: age),
                  // ),
                  // Container(
                  //   height: 200,
                  //   child: CupertinoDatePicker(
                  //     mode: CupertinoDatePickerMode.date,
                  //     initialDateTime: DateTime(1969, 1, 1),
                  //     onDateTimeChanged: (DateTime newDateTime) {
                  //       // Do something
                  //     },
                  //   ),
                  // ),
                  Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        hb,
                        style: namestyle,
                      )),
                  Padding(
                    padding: bottom,
                    child: TextField(),
                  ),
                  Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        sugar,
                        style: namestyle,
                      )),
                  Padding(
                    padding: bottom,
                    child: TextField(),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10, bottom: 5),
                    child: Center(
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).pushNamedAndRemoveUntil(
                                '/home', (route) => true);
                          },
                          child: Text(reg)),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

showAlertDialog(BuildContext context) {}
