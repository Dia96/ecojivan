import 'package:flutter/material.dart';

class Registration extends StatefulWidget {
  @override
  _RegistrationState createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
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
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            // child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(''),
                  Text("Create your Account"),
                  Align(alignment: Alignment.topLeft, child: Text('Name')),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                  ),
                  Align(alignment: Alignment.topLeft, child: Text('Address')),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                          height: 30,
                          width: 100,
                          decoration: BoxDecoration(color: Colors.white),
                          child: Text("House No*")),
                      Container(
                          height: 30,
                          width: 100,
                          decoration: BoxDecoration(color: Colors.white),
                          child: Text("Street*")),
                      Container(
                          height: 30,
                          width: 100,
                          decoration: BoxDecoration(color: Colors.white),
                          child: Text("Pincode*"))
                    ],
                  ),
                  Align(alignment: Alignment.topLeft, child: Text('Gender')),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ElevatedButton.icon(
                          onPressed: () {},
                          icon: Icon(Icons.female),
                          label: Text('Female')),
                      ElevatedButton.icon(
                          onPressed: () {},
                          icon: Icon(Icons.male),
                          label: Text('Male')),
                      ElevatedButton.icon(
                          onPressed: () {},
                          icon: Icon(Icons.transgender),
                          label: Text('Others')),
                    ],
                  ),
                  Align(
                      alignment: Alignment.topLeft, child: Text('Looking For')),
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
                  Align(
                      alignment: Alignment.topLeft,
                      child: Text('Health Information(Optional')),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                          height: 30,
                          width: 100,
                          decoration: BoxDecoration(color: Colors.white),
                          child: Text("Height")),
                      Container(
                          height: 30,
                          width: 100,
                          decoration: BoxDecoration(color: Colors.white),
                          child: Text("Weight")),
                      Container(
                          height: 30,
                          width: 100,
                          decoration: BoxDecoration(color: Colors.white),
                          child: Text("Age")),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                          height: 30,
                          width: 100,
                          decoration: BoxDecoration(color: Colors.white),
                          child: Text("HbA1c")),
                      Container(
                          height: 30,
                          width: 100,
                          decoration: BoxDecoration(color: Colors.white),
                          child: Text("Random Blood Sugar")),
                      Container(
                          height: 30,
                          width: 100,
                          decoration: BoxDecoration(color: Colors.white),
                          child: Text("Others")),
                    ],
                  ),
                  Center(
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).pushNamedAndRemoveUntil(
                              '/home', (route) => true);
                        },
                        child: Text("Register")),
                  ),
                  Center(
                    child: GestureDetector(
                      onTap: () {},
                      child: Text("Already have account? Login")),
                  )
                ],
              ),
            // ),
          ),
        ),
      ),
    );
  }
}
