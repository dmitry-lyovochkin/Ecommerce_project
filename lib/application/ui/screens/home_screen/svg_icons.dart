import 'package:ecommerce_project/application/ui/themes/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


const String assetPhone = 'assets/Phone.svg';
final Widget svgPhone = SvgPicture.asset(
  assetPhone,
  color: Colors.grey,
  height: 74,
  fit: BoxFit.scaleDown,
);


const String assetComputer = 'assets/Computer.svg';
final Widget svgComputer = SvgPicture.asset(
  assetComputer,
  color: Colors.grey,
  height: 74,
  fit: BoxFit.scaleDown,
);

const String assetHealth = 'assets/Health.svg';
final Widget svgHealth = SvgPicture.asset(
  assetHealth,
  color: Colors.grey,
  height: 74,
  fit: BoxFit.scaleDown,
);

const String assetBooks = 'assets/Books.svg';
final Widget svgBooks = SvgPicture.asset(
  assetBooks,
  color: Colors.grey,
  height: 74,
  fit: BoxFit.scaleDown,
);

const String assetSearch = 'assets/Search.svg';
final Widget svgSearch = SvgPicture.asset(
  assetSearch,
  height: 5,
  width: 5,
  fit: BoxFit.scaleDown,
);

const String assetQrcode = 'assets/Qrcode.svg';
final Widget svgQrcode = SvgPicture.asset(
  assetQrcode,
);

const String assetDown = 'assets/Down.svg';
final Widget svgDown = SvgPicture.asset(
  assetDown,
);

const String assetFilter = 'assets/Filter.svg';
final Widget svgFilter = SvgPicture.asset(
  assetFilter,
  color: AppColors.buttonBarColor,
);

const String assetGeolocation = 'assets/Geolocation.svg';
final Widget svgGeolocation = SvgPicture.asset(
  assetGeolocation,
);
