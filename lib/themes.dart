import 'package:flutter/material.dart';
import 'package:flutter_application/utils/color.dart';

ThemeData light(BuildContext context) {
  return ThemeData.light().copyWith(
      primaryColor: ColorConstants.primaryColor,
      tabBarTheme: TabBarTheme(
          labelStyle: ThemeData.light().textTheme.button!.copyWith(
              color: Color(0xFF010101),
              fontSize: 16,
              fontWeight: FontWeight.w600,
              height: 1,
              fontFamily: 'SVNGilroy'),
          unselectedLabelStyle: ThemeData.light().textTheme.button!.copyWith(
              color: Color(0xFF010101),
              fontSize: 16,
              height: 1,
              fontWeight: FontWeight.w500,
              fontFamily: 'SVNGilroy')),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: Colors.transparent,
          selectedLabelStyle: TextStyle(color: Color(0xffffffff))),
      toggleableActiveColor: Colors.red,
      bottomAppBarColor: const Color(0xffe5e5e5),
      primaryColorBrightness: Brightness.light,
      primaryColorDark: Colors.black87,
      primaryIconTheme: const IconThemeData(color: Colors.white),
      brightness: Brightness.light,
      cardColor: Colors.white,
      backgroundColor: Colors.white,
      dialogBackgroundColor: Colors.white,
      scaffoldBackgroundColor: Colors.white,
      colorScheme: const ColorScheme.light(
          onPrimary: Colors.black, primary: ColorConstants.primaryColor),
      sliderTheme: SliderTheme.of(context).copyWith(
        activeTrackColor: const Color(0xff3f414e),
        inactiveTrackColor: const Color(0xffa0a3b1),
        trackHeight: 0.5,
        thumbColor: const Color(0xff3f414e),
        thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 8.0),
        overlayColor: Colors.purple.withAlpha(32),
        overlayShape: const RoundSliderOverlayShape(overlayRadius: 14.0),
      ),
      appBarTheme: AppBarTheme(
          backgroundColor: Colors.transparent,
          iconTheme: const IconThemeData(color: Colors.white),
          centerTitle: true,
          titleTextStyle: Theme.of(context)
              .textTheme
              .headline6!
              .copyWith(color: Colors.white),
          elevation: 0),
      textTheme: TextTheme(
          button: ThemeData.light().textTheme.button!.copyWith(
              color: Colors.black,
              fontSize: 14,
              fontWeight: FontWeight.w500,
              fontFamily: 'Inter'),
          caption: ThemeData.light().textTheme.caption!.copyWith(
              color: Colors.black,
              fontSize: 12,
              fontWeight: FontWeight.w400,
              fontFamily: 'Inter'),
          headline6: ThemeData.light().textTheme.headline6!.copyWith(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.w500,
              fontFamily: 'Inter'),
          headline5: ThemeData.light().textTheme.headline5!.copyWith(
              color: Colors.black,
              fontSize: 24,
              fontWeight: FontWeight.w400,
              fontFamily: 'Inter'),
          headline4: ThemeData.light().textTheme.headline4!.copyWith(
              color: Colors.black,
              fontSize: 34,
              fontWeight: FontWeight.w400,
              fontFamily: 'Inter'),
          headline3: ThemeData.light().textTheme.headline3!.copyWith(
              color: Colors.black,
              fontSize: 48,
              fontWeight: FontWeight.w400,
              fontFamily: 'Inter'),
          headline2: ThemeData.light().textTheme.headline2!.copyWith(
              color: Colors.black,
              fontSize: 60,
              fontWeight: FontWeight.w300,
              fontFamily: 'Inter'),
          headline1: ThemeData.light().textTheme.headline1!.copyWith(
              color: Colors.black,
              fontSize: 96,
              fontWeight: FontWeight.w300,
              fontFamily: 'Inter'),
          subtitle2: ThemeData.light().textTheme.subtitle2!.copyWith(
              color: Colors.black,
              fontSize: 14,
              fontWeight: FontWeight.w500,
              fontFamily: 'Inter'),
          subtitle1: ThemeData.light().textTheme.subtitle1!.copyWith(color: Colors.black, fontSize: 16, fontWeight: FontWeight.w400, fontFamily: 'Inter'),
          bodyText2: ThemeData.light().textTheme.bodyText2!.copyWith(fontSize: 14, color: Colors.black, fontWeight: FontWeight.w400, fontFamily: 'Inter'),
          bodyText1: ThemeData.light().textTheme.bodyText1!.copyWith(color: Colors.black, fontSize: 16, fontWeight: FontWeight.w400, fontFamily: 'Inter')),
      dividerTheme: DividerThemeData(
        thickness: 1,
        color: ColorConstants.divider,
      ),
      textSelectionTheme: TextSelectionThemeData(cursorColor: Colors.black, selectionColor: Colors.black.withOpacity(0.2), selectionHandleColor: Colors.black),
      inputDecorationTheme: InputDecorationTheme(
        prefixStyle: const TextStyle(color: Colors.black),
        hintStyle: Theme.of(context).textTheme.bodyText1!.copyWith(
            fontWeight: FontWeight.w500, color: ColorConstants.blackOpacity50),
        labelStyle: Theme.of(context).textTheme.bodyText1!.copyWith(
            fontWeight: FontWeight.w700, color: ColorConstants.textColorBlack),
        // floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixStyle: const TextStyle(color: Colors.black),
        errorStyle: const TextStyle(color: Colors.red, fontSize: 14),
        contentPadding:
            const EdgeInsets.symmetric(vertical: 18, horizontal: 12),
        filled: true,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          // backgroundColor: ColorConstants.grayBackground,
          // foregroundColor: ColorConstants.grayBackground,
          // disabledForegroundColor: ColorConstants.grayBackground,
          // disabledBackgroundColor: ColorConstants.grayBackground,
          primary: ColorConstants.grayBackground,
          elevation: 1,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),

        ),
      ));
}

ThemeData dark(BuildContext context) {
  return ThemeData.dark();
}
