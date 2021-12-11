import 'package:dropdown_search/dropdown_search.dart';
import 'package:ecojivan/constraint.dart';
import 'package:flutter/material.dart';

class RegistrationThree extends StatefulWidget {
  @override
  _RegistrationThreeState createState() => _RegistrationThreeState();
}

class _RegistrationThreeState extends State<RegistrationThree> {
  bool _healthy = false;
  bool _diabetes = false;
  bool _obesity = false;
  bool _hyper = false;
  bool _pcos = false;
  bool _stress = false;
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
                  Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        infohealth,
                        style: namestyle,
                      )),
                  Padding(
                    padding: const EdgeInsets.only(top: 20, bottom: 15),
                    child: DropdownSearch<String>(
                        mode: Mode.MENU,
                        //showSelectedItem: true,
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
                        //hint: "country in menu mode",
                        // popupItemDisabled: (String s) => s.startsWith('I'),
                        onChanged: print,
                        selectedItem: selectheight),
                  ),
                  Padding(
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
                        ],
                        label: weight,
                        selectedItem: selectweight),
                  ),
                  Padding(
                    padding: paddingtb,
                    child: DropdownSearch<String>(
                        mode: Mode.MENU,
                        items: ["14", "15", "16", '17', "18", "19", "20", '21'],
                        label: age,
                        selectedItem: age),
                  ),
                  Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        hb,
                        style: namestyle,
                      )),
                  Padding(
                    padding: paddingtb,
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        sugar,
                        style:namestyle,
                      )),
                  Padding(
                    padding: paddingtb,
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                      ),
                    ),
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
                  Center(
                    child: GestureDetector(
                        onTap: () {}, child: Text(existinguser)),
                  )
                ],
              ),
            ),
            // ),
            // ),
          ),
        ),
      ),
    );
  }
}
