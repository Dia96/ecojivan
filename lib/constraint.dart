import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const PrimaryColor = const Color(0xFF263238);
const PrimaryColorLight = const Color(0xFFD7CCC8);
const SecondaryColor = const Color(0xFF78909C);
const TertiaryColor = const Color(0xFFFFFFFF);

const backColor = const Color(0xFFEEEEEE);
// const PrimaryColor = const Color(0xFFFFFFFF);
const buttonColor = const Color(0xFF8BC34A);

const AppColor = const Color(0x73000000);

const backgroundgradient = LinearGradient(
  begin: Alignment.centerLeft,
  end: Alignment.centerRight,
  colors: [TertiaryColor, PrimaryColorLight],
);

const countryinput = BoxDecoration(
  color: TertiaryColor,
  borderRadius: BorderRadius.only(
    topLeft: const Radius.circular(10.0),
    topRight: const Radius.circular(10.0),
    bottomLeft: const Radius.circular(10.0),
    bottomRight: const Radius.circular(10.0),
  ),
);

// const recipegrid = BoxDecoration(
//   color: TertiaryColor,
//   borderRadius: 
//   // borderRadius: BorderRadius.only(
//   //   topLeft: const Radius.circular(10.0),
//   //   topRight: const Radius.circular(10.0),
//   //   bottomLeft: const Radius.circular(10.0),
//   //   bottomRight: const Radius.circular(10.0),
//   // ),
// );

const backgrounddecoration = BoxDecoration(gradient: backgroundgradient);



const decoration = BoxDecoration(
  color: const Color(0xFFFFFFFF),
);

const gradientdecoration = BoxDecoration(
    gradient: LinearGradient(
  begin: Alignment.centerLeft,
  end: Alignment.centerRight,
  colors: [SecondaryColor, PrimaryColor],
));

const bold = TextStyle(
    fontSize: 25,
    fontWeight: FontWeight.bold,
    color: AppColor,
    decoration: TextDecoration.none);
    const whitebold = TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.bold,
    color: TertiaryColor,
    decoration: TextDecoration.none);
const phoneverify = TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.bold,
    color: TertiaryColor,
    decoration: TextDecoration.none);
const otpverify = TextStyle(
    fontSize: 15, color: TertiaryColor, decoration: TextDecoration.none);
const namestyle = TextStyle(fontSize: 18, fontWeight: FontWeight.bold);
const genderstyle = TextStyle(fontSize: 18);
const cuisinestyle = TextStyle(fontSize: 15);
const bottomstyle = TextStyle(color: TertiaryColor);
const opacitystyle = TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: TertiaryColor);

const top50 = EdgeInsets.only(top: 50);
const paddingall = EdgeInsets.all(15.0);
const paddingtb = EdgeInsets.only(top: 10, bottom: 15);
const top = EdgeInsets.only(top: 10);
const bottom = EdgeInsets.only(bottom: 10);
const lefttop = EdgeInsets.only(left: 15, top: 15);
const drawertitle = EdgeInsets.only(top: 10, bottom: 10, left: 10);
const regpadding = EdgeInsets.only(top: 10, bottom: 30);

var appname = 'ECO JIVAN';
var slogan = 'Eat Healthy - Live Healthy';
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
var weight = 'Weight';
var weigh = 'Weight';
var age = 'Age';
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
var exp = ' years exp';
var designation = 'Physician - MBBS/MD(Gen Med)';
var name = 'Name';
var create = 'Create your Account';
var edit = 'Edit profile';
var nothing = 'Nothing to Show';
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
var noproduct = 'No Data Found';
var quantity = 'Quantity';
var foodname = 'Dish Name';
var nutrition = 'Nutritional Chart';
var recipe = 'Healthy Recipes';
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
var workout = 'Workout Plans';
var exname = 'Exercise Name';
var diet = 'Diet Plan';
var history = 'History';
var consult1 = 'Dietician';
var consult2 = 'Physiotherapists';
var consult3 = 'Psychiastrist';
var drawertitle1 = 'Consult Now';
var drawertitle2 = 'Order Products';
var drawertitle3 = 'Buy Subscriptions';
var drawertitle4 = 'About us';
var drawertitle5 = 'Privacy Policy';
var drawertitle6 = 'Terms and Conditions';

var drawertitle8 = 'Weekly Reports';
var drawertitle9 = 'Diet Plan';
var drawertitle10 = 'Workout Plan';
var drawertitle11 = 'Reminders';
var drawertitle12 = 'Settings';
var subscribe = 'Subscriptions';
var week = 'Week XYZ';
var weekfrom = '06 December - 12 December 2021';
var consultancy = 'Online Consultations';
var fitness = 'Fitness Goals';
var usecardname = 'Use name on account';
var expiry = 'Expiry date';
var namecard = 'Name on Card';
var numbercard = 'Card number';
var manage = 'Manage Cards';
var addcard = 'Add a Credit or Debit Card';
var entercard = 'Enter your credit/debit card information';
var month = 'Month';
var year = 'Year';
var addyourcard = 'Add your Card';
var link = 'Link  Your UPI / PhonePe / GPay';
var managerefund = 'Manage your Bank Account for Refund';
var selectpay = 'Select Payment Method';
var cuisine = 'Cuisines';
var meal = 'Meals';
var squat = 'Squats';
var lunges = 'Lunges';
var course = 'Course of Meals';
var cuisine1 = 'Indian';
var cuisine2 = 'Chinese';
var cuisine3 = 'Asian';
var cuisine4 = 'Thai';
var cuisine5 = 'Italian';
var cuisine6 = 'Mexican';
var cuisine7 = 'Continental';
var cuisine8 = 'Middle Eastern';



//most selected issues
var fever = 'Fever';
var gas = 'Gas';
var motion = 'Loose motion/Diarrhea';
var blocked = 'Blocked Nose';
var sneeze = 'Sneezing';
var acne = 'Acne';
var rash = 'Rashes';
var period = 'Period related Issues';
var spots = 'Spots on skin';
var pregnancy = 'Pregnancy related Issues';
var darkcircle = 'Dark Circles';
var vomit = 'Vomiting';
var headache = 'Headache';
var constipation = 'Constipation';
var runny = 'Runny Nose';
var abdominal = 'Abdominal Pain';
var hairfall = 'Hairfall';
var cough = 'Cough';
var obesity = 'Obesity';
var dryskin = 'Dry Skin';
var heartburn = 'heartburn';
var throat = 'Throat Pain';
var itching = 'Itching';
var others = 'Others';

//womens health
var women = "Women's Health";
var discharge = 'White Discharge';
var excessbleed = 'Excessive bleeding';
var bleed = 'Bleeding after sex';
var pregplan = 'Pregnancy Planning';
var thyroid = 'Thyroid Problems';



var dummy = "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.";





