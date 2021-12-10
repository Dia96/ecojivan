// import 'package:flutter/material.dart';
// import 'package:intro_views_flutter/intro_views_flutter.dart';

// class Onboarding extends StatelessWidget {
//   // Making list of pages needed to pass in IntroViewsFlutter constructor.
//   final pages = [
//     PageViewModel(
//       pageColor: const Color(0xFF03A9F4),
//       // iconImageAssetPath: 'assets/air-hostess.png',
//       bubble: Image.asset(''),
//       body: const Text(
//         'Description of something',
//       ),
//       title: const Text(
//         'Something',
//       ),
//       titleTextStyle:
//           const TextStyle(fontFamily: 'MyFont', color: Colors.white),
//       bodyTextStyle: const TextStyle(fontFamily: 'MyFont', color: Colors.white),
//       mainImage: Image.asset(
//         '',
//         height: 285.0,
//         width: 285.0,
//         alignment: Alignment.center,
//       ),
//     ),
//     PageViewModel(
//       pageColor: const Color(0xFF8BC34A),
//       iconImageAssetPath: '',
//       body: const Text(
//         'Description of something',
//       ),
//       title: const Text('Something'),
//       mainImage: Image.asset(
//         '',
//         height: 285.0,
//         width: 285.0,
//         alignment: Alignment.center,
//       ),
//       titleTextStyle:
//           const TextStyle(fontFamily: 'MyFont', color: Colors.white),
//       bodyTextStyle: const TextStyle(fontFamily: 'MyFont', color: Colors.white),
//     ),
//     PageViewModel(
//       pageBackground: Container(
//         decoration: const BoxDecoration(
//           gradient: LinearGradient(
//             stops: [0.0, 1.0],
//             begin: FractionalOffset.topCenter,
//             end: FractionalOffset.bottomCenter,
//             tileMode: TileMode.repeated,
//             colors: [
//               Colors.orange,
//               Colors.pinkAccent,
//             ],
//           ),
//         ),
//       ),
//       iconImageAssetPath: '',
//       body: const Text(
//         'Description of something',
//       ),
//       title: const Text('Something'),
//       mainImage: Image.asset(
//         '',
//         height: 285.0,
//         width: 285.0,
//         alignment: Alignment.center,
//       ),
//       titleTextStyle:
//           const TextStyle(fontFamily: 'MyFont', color: Colors.white),
//       bodyTextStyle: const TextStyle(fontFamily: 'MyFont', color: Colors.white),
//     ),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'IntroViews Flutter',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: Builder(
//         builder: (context) => IntroViewsFlutter(
//           pages,
//           showNextButton: true,
//           showBackButton: true,
//           onTapDoneButton: () {
//             Navigator.of(context)
//                 .pushNamedAndRemoveUntil('/login', (route) => true);
//           },
//           pageButtonTextStyles: const TextStyle(
//             color: Colors.white,
//             fontSize: 18.0,
//           ),
//         ),
//       ),
//     );
//   }
// }
