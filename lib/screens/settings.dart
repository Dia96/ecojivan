import 'package:ecojivan/constraint.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:list_tile_switch/list_tile_switch.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    bool _value = true;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          settings,
          style: whitebold,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Icon(Icons.wallet_travel),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Icon(Icons.notifications),
          ),
        ],
        flexibleSpace: Container(
          decoration: gradientdecoration,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: paddingall,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Account Settings',
                    style: namestyle,
                  )),
            
                Card(
                  child: ListTile(
                    title: Text("Profile Security"),
                  ),
                ),
           
                GestureDetector(
                  onTap: () {
                     Navigator.of(context)
                            .pushNamedAndRemoveUntil('/payments', (route) => true);
                  },
                  child: Card(
                    child: ListTile(
                      title: Text("Payment Options"),
                    ),
                  ),
                ),
             
                Card(
                  child: ListTile(             
                    title: Text("Choose your Language"),
                    trailing: Text("English"),
                  ),
                ),
       
              Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Notifications',
                    style: namestyle,
                  )),
             

              Card(
                child: ListTileSwitch(  
                    value: _value,  
                 
                  onChanged: (value) {  
                    setState(() {  
                    _value = value;  
                    });
                  },
                  visualDensity: VisualDensity.comfortable,
                  switchType: SwitchType.cupertino,
                  switchActiveColor: Colors.indigo,  
                  title: Text('Medicine Reminder Notification'),  
                 ),
              ),
              Card(
                child: ListTileSwitch(  
                    value: _value,  
                   
                  onChanged: (value) {  
                    setState(() {  
                    _value = value;  
                    });
                  },
                  visualDensity: VisualDensity.comfortable,
                  switchType: SwitchType.cupertino,
                  switchActiveColor: Colors.indigo,  
                  title: Text('Appointment Reminder Notification'),  
                 ),
              ),

            ElevatedButton(onPressed: () {
              // Navigator.of(context)
              //               .pushNamedAndRemoveUntil('/test', (route) => true);
            }, 
            child: Text('Sign out')
            ),
              
            ],
          ),
        ),
      ),
    );
  }
}
