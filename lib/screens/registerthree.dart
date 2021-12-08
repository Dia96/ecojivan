import 'package:dropdown_search/dropdown_search.dart';
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
      decoration: BoxDecoration(
          gradient: LinearGradient(
        begin: Alignment.centerLeft,
        end: Alignment.centerRight,
        colors: [Colors.grey, Colors.brown],
      )),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: SingleChildScrollView(
            //child: Center(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              // child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Health Information(Optional',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
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
                        label: "Height",
                        //hint: "country in menu mode",
                        // popupItemDisabled: (String s) => s.startsWith('I'),
                        onChanged: print,
                        selectedItem: "Select Height"),
                  ),

                       Padding(
                         padding: const EdgeInsets.only(top: 10, bottom: 15),
                         child: DropdownSearch<String>(
                      mode: Mode.MENU,
                      items: [
                          "30Km",
                          "31Km",
                          "32Km",
                          '33Km',
                          "34Km",
                          "35Km",
                          "36Km",
                          '37Km'
                      ],
                      label: "Weight",
                      selectedItem: "Select Weight"),
                       ),

                      Padding(
                        padding: const EdgeInsets.only(top: 10, bottom: 15),
                        child: DropdownSearch<String>(
                        mode: Mode.MENU,
                        items: [
                          "14",
                          "15",
                          "16",
                          '17',
                          "18",
                          "19",
                          "20",
                          '21'
                        ],
                        label: "Age",
                        selectedItem: "Select Age"),
                      ),

                     Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'HbA1c',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    )),
                Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 15),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                  ),
                ), 

                Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Random Blood Sugar',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    )),
                Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 15),
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
                          child: Text("Register")),
                    ),
                  ),
                  Center(
                    child: GestureDetector(
                        onTap: () {},
                        child: Text("Already have account? Login")),
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
