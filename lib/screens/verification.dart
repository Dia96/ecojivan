import 'package:ecojivan/constraint.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
//import 'package:fluttertoast/fluttertoast.dart';

class LoginWithPhone extends StatefulWidget {
  const LoginWithPhone({Key? key}) : super(key: key);

  @override
  _LoginWithPhoneState createState() => _LoginWithPhoneState();
}

class _LoginWithPhoneState extends State<LoginWithPhone> {
  TextEditingController phoneController = TextEditingController(text: "");
  TextEditingController otpController = TextEditingController();

  FirebaseAuth auth = FirebaseAuth.instance;

  bool otpVisibility = false;

  String verificationID = "";

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: gradientdecoration,
      child: Scaffold(
      backgroundColor: Colors.transparent,
       
        body: Container(
          margin: EdgeInsets.all(10),
          child: Column(
             mainAxisAlignment: MainAxisAlignment.end,
             crossAxisAlignment: CrossAxisAlignment.center,
           // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: phoneController,
                decoration: InputDecoration(
                        labelText: "Phone number",
                        
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                      ),
               
               
                // decoration: InputDecoration(
                //   labelText: "Phone number"),
                keyboardType: TextInputType.phone,
              ),

              Visibility(child: TextField(
                controller: otpController,
                decoration: InputDecoration(),
                keyboardType: TextInputType.number,
              ),visible: otpVisibility,),

              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: () {
                    if(otpVisibility){
                      verifyOTP();
                    }
                    else {
                      loginWithPhone();
                    }
                  },
                  child: Text(otpVisibility ? "Verify" : "Login")),
            ],
          ),
        ),
      ),
    );
  }

  void loginWithPhone() async {
    auth.verifyPhoneNumber(
      phoneNumber: phoneController.text,
      verificationCompleted: (PhoneAuthCredential credential) async {
        await auth.signInWithCredential(credential).then((value){
          print("You are logged in successfully");
        });
      },
      verificationFailed: (FirebaseAuthException e) {
        print(e.message);
      },
      codeSent: (String verificationId, int? resendToken) {
        otpVisibility = true;
        verificationID = verificationId;
        setState(() {});
      },
      codeAutoRetrievalTimeout: (String verificationId) {

      },
    );
  }

  void verifyOTP() async {

    PhoneAuthCredential credential = PhoneAuthProvider.credential(verificationId: verificationID, smsCode: otpController.text);

    await auth.signInWithCredential(credential).then((value){
      //Firebase
      print("You are logged in successfully");

       Navigator.of(context).pushNamedAndRemoveUntil(
                              '/register', (route) => false);




  //                             Future<void> logOut(BuildContext context) async {
  //   try {
  //     final User firebaseUser = await FirebaseAuth.instance.currentUser;
       
  //     if (firebaseUser != null) {
  //         FirebaseAuth.instance.signOut().then((value) => {
  //           Navigator.of(context).pushNamedAndRemoveUntil(
  //                             '/verification', (route) => false),
  //         });
  //     }
  //   } catch (e) {
  //     print(e); // TODO: show dialog with error
  //   }
  // }





      // Fluttertoast.showToast(
      //     msg: "You are logged in successfully",
      //     toastLength: Toast.LENGTH_SHORT,
      //     gravity: ToastGravity.CENTER,
      //     timeInSecForIosWeb: 1,
      //     backgroundColor: Colors.red,
      //     textColor: Colors.white,
      //     fontSize: 16.0
      // );
    });
  }
}

//sign out
// onPressed: ()async{
//           await _auth.signOut();
//           Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginScreen()));
//         },


// import 'package:flutter/material.dart';
// import 'package:pin_entry_text_field/pin_entry_text_field.dart';
// import 'package:the_country_number_widgets/the_country_number_widgets.dart';

// import '../constraint.dart';

// class Verification extends StatefulWidget {
//   @override
//   State<Verification> createState() => _VerificationState();
// }

// class _VerificationState extends State<Verification> {

  




//   var _showOtp;
  
//   @override
//   void initState() {
//     _showOtp = false;
//     super.initState();
//   }

//   void show() {
//     setState(() {
//       _showOtp = !_showOtp;
//     });
//   }
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: gradientdecoration,
//       child: Scaffold(
//         backgroundColor: Colors.transparent,
//         body: SafeArea(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.end,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               Text(
//                 enterphone,
//                 style: phoneverify,
//               ),
//               Padding(
//                 padding: paddingall,
//                 child: Container(
//                   padding: EdgeInsets.only(left: 10, right: 10),
//                   decoration: countryinput,
//                   child: TheCountryNumberInput(
//                     TheCountryNumber().parseNumber(iso2Code: "IN"),
//                     onChanged: (tn) {
//                       if (tn.isNotANumber()) {
//                         return;
//                       }
//                       if (tn.isValidLength) {
//                         show();
//                       }
//                     },
//                     //custom validation
//                     customValidator: (tn) {
//                       final enteredNumber = tn.number;
//                       //do something
//                       return null;
//                     },
//                   ),
//                 ),
//               ),
//               Visibility(
               
//                 child: Column(
//                   children: [
//                     Text(enterotp, style: otpverify),
//                     Padding(
//                       padding: const EdgeInsets.only(bottom: 20),
//                       child: PinEntryTextField(
//                         onSubmit: (String pin) {
//                           Navigator.of(context).pushNamedAndRemoveUntil(
//                              '/register', (route) => false);
//                           // showDialog(
//                           //     context: context,
//                           //     builder: (context) {
//                           //       return AlertDialog(
//                           //         title: Text("Pin"),
//                           //         content: Text('Pin entered is $pin'),
//                           //       );
//                           //     }); 
//                         }, 
//                       ),
//                     ),
//                   ],
//                 ),
//                 visible:_showOtp,
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }






