import 'package:ecojivan/constraint.dart';
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
      decoration: decoration,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: paddingall,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 10, bottom: 5, right: 10),
                    child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          looking,
                          style: namestyle,
                        )),
                  ),
                  CheckboxListTile(
                    controlAffinity: ListTileControlAffinity.leading,
                    title: Text(health),
                    value: _healthy,
                    onChanged: (value) {
                      setState(() {
                        _healthy = !_healthy;
                      });
                    },
                  ),
                  CheckboxListTile(
                    controlAffinity: ListTileControlAffinity.leading,
                    title: Text(diab),
                    value: _diabetes,
                    onChanged: (value) {
                      setState(() {
                        _diabetes = !_diabetes;
                      });
                    },
                  ),
                  CheckboxListTile(
                    controlAffinity: ListTileControlAffinity.leading,
                    title: Text(obese),
                    value: _obesity,
                    onChanged: (value) {
                      setState(() {
                        _obesity = !_obesity;
                      });
                    },
                  ),
                  CheckboxListTile(
                    controlAffinity: ListTileControlAffinity.leading,
                    title: Text(hyper),
                    value: _hyper,
                    onChanged: (value) {
                      setState(() {
                        _hyper = !_hyper;
                      });
                    },
                  ),
                  CheckboxListTile(
                    controlAffinity: ListTileControlAffinity.leading,
                    title: Text(pcos),
                    value: _pcos,
                    onChanged: (value) {
                      setState(() {
                        _pcos = !_pcos;
                      });
                    },
                  ),
                  CheckboxListTile(
                    controlAffinity: ListTileControlAffinity.leading,
                    title: Text(stress),
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
                        label: Text(next),
                        icon: Icon(Icons.arrow_right),
                      ),
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
