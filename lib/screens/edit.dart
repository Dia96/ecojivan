import 'package:dropdown_search/dropdown_search.dart';
import 'package:ecojivan/constraint.dart';
import 'package:flutter/material.dart';
import 'package:multiselectchipgroup/multiselectchipgroup.dart';
import 'package:flutter/src/rendering/sliver_multi_box_adaptor.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: paddingall,
        child: Card(
          child: Column(
            children: [
              Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  name,
                  style: namestyle,
                ),
              ),
              Padding(
                padding: bottom,
                child: TextField(),
              ),
              Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    gender,
                    style: namestyle,
                  )),
              Padding(
                padding: paddingtb,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton.icon(
                        onPressed: () {},
                        icon: Icon(Icons.female),
                        label: Text(
                          female,
                          style: genderstyle,
                        )),
                    ElevatedButton.icon(
                        onPressed: () {},
                        icon: Icon(Icons.male),
                        label: Text(
                          male,
                          style: genderstyle,
                        )),
                    ElevatedButton.icon(
                        onPressed: () {},
                        icon: Icon(Icons.transgender),
                        label: Text(
                          trans,
                          style: genderstyle,
                        )),
                  ],
                ),
              ),
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
              Row(children: [
                Expanded(
                  child: Row(children: <Widget>[
                    Expanded(
                      child: Padding(
                        padding: paddingtb,
                        child: DropdownSearch<String>(
                            mode: Mode.MENU,
                            items: [
                              "110cm",
                              "120cm",
                              "130cm",
                              '140cm',
                              "150cm",
                              "160cm",
                              "170cm",
                              '180cm'
                            ],
                            label: height,
                            onChanged: print,
                            selectedItem: selectheight),
                      ),
                    ),
                    SizedBox(width: 20),
                    Expanded(
                      child: Padding(
                        padding: paddingtb,
                        child: DropdownSearch<String>(
                            mode: Mode.MENU,
                            items: [
                              "30kg",
                              "31Kg",
                              "32Kg",
                              '33Kg',
                              "34Kg",
                              "35Kg",
                              "36Kg",
                              '37Kg'
                                  "38kg",
                              "39Kg",
                              "40Kg",
                              '41Kg',
                              "42Kg",
                              "43Kg",
                              "44Kg",
                              '45Kg'
                            ],
                            label: weight,
                            selectedItem: selectweight),
                      ),
                    ),
                    SizedBox(width: 20),
                    Expanded(
                      child: Padding(
                        padding: paddingtb,
                        child: DropdownSearch<String>(
                            mode: Mode.MENU,
                            items: [
                              "110cm",
                              "120cm",
                              "130cm",
                              '140cm',
                              "150cm",
                              "160cm",
                              "170cm",
                              '180cm'
                            ],
                            label: height,
                            onChanged: print,
                            selectedItem: selectheight),
                      ),
                    ),
                  ]),
                )
              ]),
            ],
          ),
        ),
      ),
    );
  }
}
