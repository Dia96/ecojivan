import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
        begin: Alignment.centerLeft,
        end: Alignment.centerRight,
        colors: [Colors.grey, Colors.brown],
      )),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
          height: height,
          width: width,
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 00, 20, 00),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: width,
                    height: height * 0.45,
                    
                  ),
                  Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      Card(
                        elevation: 5,
                        child: Padding(
                          padding: const EdgeInsets.all(40.0),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 50),
                                child: TextField(
                                  decoration: InputDecoration(
                                    hintText: 'Email',
                                    icon: Icon(Icons.email),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 20.0,
                              ),
                              TextField(
                                obscureText: true,
                                decoration: InputDecoration(
                                  hintText: 'Password',
                                  icon: Icon(Icons.remove_red_eye),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                ),
                              ),
                              SizedBox(height: 10.0),
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    textStyle:
                                        TextStyle(fontWeight: FontWeight.bold)),
                                child: Text('Sign In'),
                                onPressed: () {
                                  Navigator.of(context).pushNamedAndRemoveUntil('/records', (route) => true);
                                },
                              ),
                              GestureDetector(
                                onTap: () async {
                                  await AlertDialog(
                                    title: Text(
                                        "Enter your resgistered email id or phone number below"),
                                    content: TextField(
                                      decoration: InputDecoration(
                                        hintText: 'Email or Number',
                                        border: OutlineInputBorder(),
                                      ),
                                    ),
                                    actions: <Widget>[
                                      Center(
                                        child: ElevatedButton(
                                          child: Text("Send OTP"),
                                          onPressed: () async {
                                            await AlertDialog(
                                              title: Text(
                                                  "Enter OTP sent on your registered Email/Phone Number "),
                                              content: TextField(
                                                decoration: InputDecoration(
                                                  hintText: 'Email or Number',
                                                  border: OutlineInputBorder(),
                                                ),
                                              ),
                                              actions: <Widget>[
                                                Center(
                                                  child: ElevatedButton(
                                                    child: Text("Verify OTP"),
                                                    onPressed: () {
                                                      // Navigator.of(context)
                                                      //     .pushNamedAndRemoveUntil(
                                                      //         '/reset',
                                                      //         (route) => false);
                                                    },
                                                  ),
                                                ),
                                              ],
                                            );
                                          },
                                        ),
                                      ),
                                    ],
                                  );
                                },
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 5),
                                  child: Text(
                                    'Forgot password? Click here to reset',
                                    style: TextStyle(fontSize: 15.0),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Center(
                        child: Container(
                          height: 60,
                          width: 100,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'Login',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30.0,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    ],
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
