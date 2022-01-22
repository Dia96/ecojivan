// import 'package:ecojivan/constraint.dart';
// import 'package:flutter/material.dart';
// import 'package:multiselectchipgroup/multiselectchipgroup.dart';

// class Consult extends StatelessWidget {
//   const Consult({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     final double itemHeight = 5;
//     final double itemWidth = 15;

//     return Column(
//       children: [
//         Align(
//           alignment: Alignment.bottomLeft,
//           child: Text(
//             'Select your Concern',
//             style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
//           ),
//         ),

//         Align(
//           alignment: Alignment.bottomLeft,
//           child: Text(
//             'Most selected Issues',
//             style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
//           ),
//         ),

//         MultiSelectChipGroup(
//           items: [health, diab, obese, hyper, pcos, stress],
//           onSelectionChanged: (values) {
//             print(values);
//           },
//           horizontalChipSpacing: 10,
//           selectedColor: Colors.green,
//           disabledColor: Colors.white,
//           leftCommonIcon: Icons.perm_identity,
//           leftIcons: [
//             Icons.alarm,
//             Icons.ac_unit,
//             Icons.accessibility,
//             Icons.account_balance,
//             Icons.perm_identity,
//             Icons.perm_identity,
//           ],
//         ),
//         // Flexible(
//         //   child: GridView(
//         //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//         //       crossAxisCount: 2,
//         //       childAspectRatio: (itemWidth / itemHeight),
//         //     ),
//         //     children: [
//         //       Card(
//         //         child: ListTile(
//         //           leading: ClipRRect(
//         //             borderRadius: BorderRadius.circular(10.0),
//         //             child: Container(
//         //                 height: 40.0,
//         //                 width: 40.0,
//         //                 color: PrimaryColor,
//         //                 child: Image.asset('assets/logo.png')),
//         //           ),
//         //           title: Text('Body Pain'),
//         //         ),
//         //       ),
//         //       Card(
//         //         child: ListTile(
//         //           leading: ClipRRect(
//         //             borderRadius: BorderRadius.circular(10.0),
//         //             child: Container(
//         //                 height: 40.0,
//         //                 width: 40.0,
//         //                 color: PrimaryColor,
//         //                 child: Image.asset('assets/logo.png')),
//         //           ),
//         //           title: Text('Vomiting'),
//         //         ),
//         //       ),
//         //       Card(
//         //         child: ListTile(
//         //           leading: ClipRRect(
//         //             borderRadius: BorderRadius.circular(10.0), //or 15.0
//         //             child: Container(
//         //                 height: 40.0,
//         //                 width: 40.0,
//         //                 color: PrimaryColor,
//         //                 child: Image.asset('assets/logo.png')),
//         //           ),
//         //           title: Text('a'),
//         //         ),
//         //       ),
//         //       Card(
//         //         child: ListTile(
//         //           leading: ClipRRect(
//         //             borderRadius: BorderRadius.circular(10.0), //or 15.0
//         //             child: Container(
//         //                 height: 40.0,
//         //                 width: 40.0,
//         //                 color: PrimaryColor,
//         //                 child: Image.asset('assets/logo.png')),
//         //           ),
//         //           title: Text(acne),
//         //         ),
//         //       ),
//         //       Card(
//         //         child: ListTile(
//         //           leading: ClipRRect(
//         //             borderRadius: BorderRadius.circular(10.0), //or 15.0
//         //             child: Container(
//         //                 height: 40.0,
//         //                 width: 40.0,
//         //                 color: PrimaryColor,
//         //                 child: Image.asset('assets/logo.png')),
//         //           ),
//         //           title: Text('Fever'),
//         //         ),
//         //       ),
//         //       Card(
//         //         child: ListTile(
//         //           leading: ClipRRect(
//         //             borderRadius: BorderRadius.circular(10.0), //or 15.0
//         //             child: Container(
//         //                 height: 40.0,
//         //                 width: 40.0,
//         //                 color: PrimaryColor,
//         //                 child: Image.asset('assets/logo.png')),
//         //           ),
//         //           title: Text('Sneezing'),
//         //         ),
//         //       ),
//         //       Card(
//         //         child: ListTile(
//         //           leading: ClipRRect(
//         //             borderRadius: BorderRadius.circular(10.0), //or 15.0
//         //             child: Container(
//         //                 height: 40.0,
//         //                 width: 40.0,
//         //                 color: PrimaryColor,
//         //                 child: Image.asset('assets/logo.png')),
//         //           ),
//         //           title: Text(runny),
//         //         ),
//         //       ),
//         //       Card(
//         //         child: ListTile(
//         //           leading: ClipRRect(
//         //             borderRadius: BorderRadius.circular(10.0), //or 15.0
//         //             child: Container(
//         //                 height: 40.0,
//         //                 width: 40.0,
//         //                 color: PrimaryColor,
//         //                 child: Image.asset('assets/logo.png')),
//         //           ),
//         //           title: Text('Headache'),
//         //         ),
//         //       ),
//         //       Card(
//         //         child: ListTile(
//         //           leading: ClipRRect(
//         //             borderRadius: BorderRadius.circular(10.0), //or 15.0
//         //             child: Container(
//         //                 height: 40.0,
//         //                 width: 40.0,
//         //                 color: PrimaryColor,
//         //                 child: Image.asset('assets/logo.png')),
//         //           ),
//         //           title: Text('Cough'),
//         //         ),
//         //       ),
//         //       Card(
//         //         child: ListTile(
//         //           leading: ClipRRect(
//         //             borderRadius: BorderRadius.circular(10.0), //or 15.0
//         //             child: Container(
//         //                 height: 40.0,
//         //                 width: 40.0,
//         //                 color: PrimaryColor,
//         //                 child: Image.asset('assets/logo.png')),
//         //           ),
//         //           title: Text('Loose Motion'),
//         //         ),
//         //       ),
//         //     ],
//         //   ),
//         // ),
//         ElevatedButton(
//             onPressed: () {
//               Navigator.of(context).pushNamedAndRemoveUntil('/doc', (route) => true);
//             },
//             child: Text('Choose Doctor'))
//       ],
//     );
//   }
// }



import 'package:flutter/material.dart';

//Material design library
void main() {
runApp(
	//widget tree starts here
	MaterialApp(
	home: Scaffold(
		appBar: AppBar(
		title: const Text('GeeksforGeeks'),
		backgroundColor: Colors.greenAccent[400],
		centerTitle: true,
		), //AppBar
		body: Center(
		child: Container(
			margin: const EdgeInsets.all(10.0),
			child: ClipRect(
			/** Banner Widget **/
			child: Banner(
				message: "20% off !!",
				location: BannerLocation.bottomStart,
				color: Colors.red,
				child: Container(
				color: Colors.green[100],
				height: 300,
				child: Padding(
					padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
					child: Column(
					children: <Widget>[
						Image.network(
							'https://media.geeksforgeeks.org/wp-content/cdn-uploads/20190806131525/forkPython.jpg'), //Image.network
						SizedBox(height: 10),
						Text(
						'GeeksforGeeks',
						style: TextStyle(
							color: Colors.green,
							fontSize: 40,
							fontWeight: FontWeight.bold), //TextStyle
						),
						SizedBox(
						height: 5,
						), //SizedBox
						Text(
						'Fork Python Course',
						style: TextStyle(
							color: Colors.green,
							fontSize: 20,
							fontWeight: FontWeight.bold), //TextStyle
						), //Text
						SizedBox(height: 20),
						RaisedButton(
						child: Text('Register'),
						color: Colors.greenAccent[400],
						onPressed: () {},
						) //RaisedButton
					], //<Widget>[]
					), //Column
				), //Padding
				), //Container
			), //Banner
			), //ClipRect
		), //container
		), //Center
	), //Scaffold
	), //MaterialApp
);
}

