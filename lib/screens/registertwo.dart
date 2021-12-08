import 'package:flutter/material.dart';

class RegistrationTwo extends StatefulWidget {
  @override
  _RegistrationTwoState createState() => _RegistrationTwoState();
}

class _RegistrationTwoState extends State<RegistrationTwo> {
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
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              // child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                 
                  
                  Padding(
                    padding: const EdgeInsets.only(top: 10, bottom: 5, right: 10),
                    // padding: const EdgeInsets.only(left: 20),
                    child: Align(alignment: Alignment.topLeft, child: Text('Looking For',
                    style:
                            TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    )),
                  ),
                  CheckboxListTile(
                    controlAffinity: ListTileControlAffinity.leading,
                    title: Text('Healthy Lifestyle'),
                    value: _healthy,
                    onChanged: (value) {
                      setState(() {
                        _healthy = !_healthy;
                      });
                    },
                  ),
                  CheckboxListTile(
                    controlAffinity: ListTileControlAffinity.leading,
                    title: Text('Diabetes Treatment'),
                    value: _diabetes,
                    onChanged: (value) {
                      setState(() {
                        _diabetes = !_diabetes;
                      });
                    },
                  ),
                  CheckboxListTile(
                    controlAffinity: ListTileControlAffinity.leading,
                    title: Text('Obesity Treatment'),
                    value: _obesity,
                    onChanged: (value) {
                      setState(() {
                        _obesity = !_obesity;
                      });
                    },
                  ),
                  CheckboxListTile(
                    controlAffinity: ListTileControlAffinity.leading,
                    title: Text('Hypertension Treatment'),
                    value: _hyper,
                    onChanged: (value) {
                      setState(() {
                        _hyper = !_hyper;
                      });
                    },
                  ),
                  CheckboxListTile(
                    controlAffinity: ListTileControlAffinity.leading,
                    title: Text('PCOS/PCOD'),
                    value: _pcos,
                    onChanged: (value) {
                      setState(() {
                        _pcos = !_pcos;
                      });
                    },
                  ),
                  CheckboxListTile(
                    controlAffinity: ListTileControlAffinity.leading,
                    title: Text('Stress'),
                    value: _stress,
                    onChanged: (value) {
                      setState(() {
                        _stress = !_stress;
                      });
                    },
                  ),
                 
                  Padding(
                    padding: const EdgeInsets.only(top: 10, bottom: 5),
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: ElevatedButton.icon(
                      onPressed: () {
                       Navigator.of(context).pushNamedAndRemoveUntil('/rthree', (route) => true);
                      }, 
                      label: Text("Next"),
                      icon: Icon(Icons.arrow_right),                      
                      ),
                      // ElevatedButton(
                      //     onPressed: () {
                      //       Navigator.of(context).pushNamedAndRemoveUntil(
                      //           '/rthree', (route) => true);
                      //     },
                      //     child: Text("Next")),
                    ),
                  ),
                ],
              ),
              // ),
            ),
          ),
        ),
      ),
    );
  }
}
