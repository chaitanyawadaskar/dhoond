// //local
// const baseUrl = "192.168.14.104:1620";
// const pathExtender = "/api/";
// String imgPath = "http://$baseUrl/";
// const isProduction = false;

//live
import 'package:flutter/material.dart';

const baseUrl = "omwinner.profcymabackend.com";
const pathExtender = "/public/api/";
String imgPath = "https://$baseUrl/";
const isProduction = true;
const googleMapApiKey = 'AIzaSyAJ4PFPr3Hg37dCE9qt7qWWcjsEcndh15k';
const razorpayKey = 'rzp_test_I05KCFb1v5JJRc';
const razorpaySecret = '4hhbL3skJYlG5BVIlFKmwFFY';

GlobalKey<ScaffoldState> userDrawerKey = GlobalKey();
GlobalKey<ScaffoldState> partnerDrawerKey = GlobalKey();

enum BookingType { inProgress, done, float }

enum ImageType { asset, network, file }

enum BookingCardButtonType {
  cancelAndPay,
  payMore,
  bookAgain,
  awaiting,
  cancelled
}

enum PartnerBookingType { reachedLocation, markAsComplete, workComplte }

enum FloatPlanType { days, weeks, month }

enum Estimator { work, cost }

enum ServiceProviderType {
  none,
  assured,
  customerCoice,
  starPerformer,
  topPerformer
}

enum BulletStyle { none, dot, numeric, dash }

enum Langauge { eng, mar, hin }

enum PartnerWorkStatus { onDuty, offDuty, goTo }

enum WalletType { wallet, earnings, lender }
