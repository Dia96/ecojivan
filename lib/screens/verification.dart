import 'package:flutter/material.dart';
import 'package:pin_entry_text_field/pin_entry_text_field.dart';
import 'package:the_country_number_widgets/the_country_number_widgets.dart';

import '../constraint.dart';

class Verification extends StatefulWidget {
  @override
  State<Verification> createState() => _VerificationState();
}

class _VerificationState extends State<Verification> {
  var _showOtp;
  
  @override
  void initState() {
    _showOtp = false;
    super.initState();
  }

  void show() {
    setState(() {
      _showOtp = !_showOtp;
    });
  }
  Widget build(BuildContext context) {
    return Container(
      decoration: backgrounddecoration,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                enterphone,
                style: phoneverify,
              ),
              Padding(
                padding: paddingall,
                child: Container(
                  padding: EdgeInsets.only(left: 10, right: 10),
                  decoration: countryinput,
                  child: TheCountryNumberInput(
                    TheCountryNumber().parseNumber(iso2Code: "IN"),
                    onChanged: (tn) {
                      if (tn.isNotANumber()) {
                        return;
                      }
                      if (tn.isValidLength) {
                        show();
                      }
                    },
                    //custom validation
                    customValidator: (tn) {
                      final enteredNumber = tn.number;
                      //do something
                      return null;
                    },
                  ),
                ),
              ),
              Visibility(
               
                child: Column(
                  children: [
                    Text(enterotp, style: otpverify),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: PinEntryTextField(
                        onSubmit: (String pin) {
                          Navigator.of(context).pushNamedAndRemoveUntil(
                             '/register', (route) => false);
                          // showDialog(
                          //     context: context,
                          //     builder: (context) {
                          //       return AlertDialog(
                          //         title: Text("Pin"),
                          //         content: Text('Pin entered is $pin'),
                          //       );
                          //     }); 
                        }, 
                      ),
                    ),
                  ],
                ),
                visible:_showOtp,
              ),
            ],
          ),
        ),
      ),
    );
  }
}











// import 'package:ecojivan/constraint.dart';
// import 'package:flutter/material.dart';
// import 'package:the_country_number_widgets/the_country_number_widgets.dart';

// class Verification extends StatefulWidget {
//   const Verification({ Key? key }) : super(key: key);

//   @override
//   _VerificationState createState() => _VerificationState();
// }

// class _VerificationState extends State<Verification> {
//   @override
//   Widget build(BuildContext context) {
//    return Column(
     
//      crossAxisAlignment: CrossAxisAlignment.center,
//      //mainAxisAlignment: MainAxisAlignment.center,
//      children: [
//        Text(enterphone, style: phoneverify,),

//        SafeArea(
//           child: Column(
//             children: [
//               TheCountryNumberInput(
//                 TheCountryNumber().parseNumber(iso2Code: "IN"),
//                 onChanged: (tn){
//                   //even you can check whether its correctly parsed, not needed but library is not even 1.0
//                   if(tn.isNotANumber()){
//                     return;
//                   }
//                   if(tn.isValidLength){
//                     //do something
//                   }
//                 },
//                 //custom validation
//                 customValidator: (tn){
//                   final enteredNumber = tn.number;
//                   //do something
//                   return null;
//                 },
//               ),
//             ],
//           ),
//         ),
//      ],
//    );
//   }
// }



// import 'package:flutter/material.dart';
// import 'package:the_country_number_widgets/the_country_number_widgets.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: Scaffold(
//         body: SafeArea(
//           child: Column(
//             children: [
//               TheCountryNumberInput(
//                 TheCountryNumber().parseNumber(iso2Code: "IN"),
//                 onChanged: (tn){
//                   //even you can check whether its correctly parsed, not needed but library is not even 1.0
//                   if(tn.isNotANumber()){
//                     return;
//                   }
//                   if(tn.isValidLength){
//                     //do something
//                   }
//                 },
//                 //custom validation
//                 customValidator: (tn){
//                   final enteredNumber = tn.number;
//                   //do something
//                   return null;
//                 },
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
