import 'package:flutter/cupertino.dart';

const PrimaryColor = const Color(0xFF795548);
const PrimaryColorLight = const Color(0xFFD7CCC8);
const SecondaryColor = const Color(0xFF9E9E9E);
const TertiaryColor = const Color(0xFFFFFFFF);

// const TertiaryColor = const Color(0xFF795548);
// const PrimaryColorLight = const Color(0xFFD7CCC8);
 const backColor = const Color(0xFFEEEEEE);
// const PrimaryColor = const Color(0xFFFFFFFF);
 const buttonColor = const Color(0xFF8BC34A);

// const AppColor = const Color(0xFF01579B);
const AppColor = const Color(0x73000000);

const backgroundgradient = LinearGradient(
  begin: Alignment.centerLeft,
  end: Alignment.centerRight,
  colors: [TertiaryColor, PrimaryColorLight],
);

const countryinput = BoxDecoration(
  color: PrimaryColor,
  borderRadius: BorderRadius.only(
    topLeft: const Radius.circular(10.0),
    topRight: const Radius.circular(10.0),
    bottomLeft: const Radius.circular(10.0),
    bottomRight: const Radius.circular(10.0),
  ),
);

const backgrounddecoration = BoxDecoration(gradient: backgroundgradient);

const decoration = BoxDecoration(
  color: const Color(0xFFFFFFFF),
  //   gradient: LinearGradient(
  // begin: Alignment.centerLeft,
  // end: Alignment.centerRight,
  // colors: [SecondaryColor, PrimaryColor],
//)
);

const gradientdecoration = BoxDecoration(
  
    gradient: LinearGradient(
  begin: Alignment.centerLeft,
  end: Alignment.centerRight,
  colors: [SecondaryColor, PrimaryColor],
)
);

const bold = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: AppColor,
    decoration: TextDecoration.none);
const phoneverify = TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.bold,
    color: PrimaryColor,
    decoration: TextDecoration.none);
const otpverify = TextStyle(
    fontSize: 15, color: PrimaryColor, decoration: TextDecoration.none);
const namestyle = TextStyle(fontSize: 15, fontWeight: FontWeight.bold);
const bottomstyle = TextStyle(color: TertiaryColor);

const paddingall = EdgeInsets.all(15.0);
const paddingtb = EdgeInsets.only(top: 10, bottom: 15);
const top = EdgeInsets.only(top: 10);
const bottom = EdgeInsets.only(bottom: 10);
const lefttop = EdgeInsets.only(left: 15, top: 15);
const drawertitle = EdgeInsets.only(top: 10, bottom: 10, left: 10);

var login = 'Login';
var add = 'Address';
var add1 = 'House No* ';
var add2 = 'Street*';
var add3 = 'Pincode*';
var gender = 'Gender';
var male = 'Male';
var female = 'Female';
var trans = 'Others';
var next = 'Next';
var health = 'Healthy Lifestyle';
var diab = 'Diabetes Treatment';
var obese = 'Obesity Treatment';
var hyper = 'Hypertension Treatment';
var pcos = 'PCOS/PCOD';
var stress = 'Stress';
var enter = 'Enter your registered email id or phone number below';
var enterotp = 'Enter 4 digit OTP sent on your mobile number';
var looking = 'Looking For';
var infohealth = 'Health Information (Optional)';
var hb = 'HbA1c';
var sugar = 'Random Blood Sugar';
var hospital = 'Name of Hospital';
var location = 'Location';
var settings = 'Settings';
var reg = 'Register';
var selectweight = 'Select Weight';
var selectheight = 'Select Height';
var height = 'Height';
var weight = 'weight';
var age = 'Age';
var existinguser = 'Already have account? Login';
var aboutus = 'About us';
var username = 'User name';
var useremail = 'user@gmail.com';
var email = 'Email';
var pass = 'Password';
var phone = 'Email or Number';
var signin = 'Sign In';
var otp = 'Send OTP';
var about = 'About';
var docname = 'Dr. Name of Doctor';
var consult = 'CONSULT DOCTOR';
var more = 'KNOW MORE';
var price = '₹ 999';
var exp = '7 years exp';
var designation = 'Physician - MBBS/MD(Gen Med)';
var name = 'Name';
var acne = 'Acne';
var runny = 'Runny';
var create = 'Create your Account';
var edit = 'Edit profile';
var bottom1 = 'Explore';
var bottom2 = 'Products';
var bottom3 = 'Consult';
var bottom4 = 'Profile';
var diet1 = 'Breakfast';
var diet2 = 'Morning Snacks';
var diet3 = 'Lunch';
var diet4 = 'Evening Snacks';
var diet5 = 'Dinner';
var cal = '730 cal';
var quantity = 'Quantity';
var foodname = 'Dish Name';
var nutrition = 'Nutritional Chart';
var recipe = 'Recipes';
var proteins = 'Proteins';
var fats = 'Fats';
var carbs = 'Carbs';
var fibre = 'Fibre';
var nutriinfo = 'Nutritional information (Per 100 gm)';
var ingredients = 'Ingredients';
var steps = 'Preparation Steps';
var cookingsteps = 'Preparation Steps in detail';
var duration = '10 Mins';
var enterphone = 'Enter phone number to continue';
