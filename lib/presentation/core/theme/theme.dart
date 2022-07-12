import 'package:flutter/material.dart';
import 'package:whatsappclone/presentation/core/theme/colors.dart';
import 'package:whatsappclone/presentation/core/theme/dimensions.dart';

class AppTheme {
  static ThemeData get darkTheme => ThemeData(
        primarySwatch: getPrimarySwatch(AppColors.primary),
        primaryColor: AppColors.primary,
        primaryColorDark: AppColors.primaryDark,
        primaryColorLight: AppColors.primaryIconLight,
        tabBarTheme: const TabBarTheme(
            indicator: BoxDecoration(
                border: Border(
                    bottom: BorderSide(
                        width: 3.0, color: AppColors.selectedLabelDark))),
            indicatorSize: TabBarIndicatorSize.tab,
            labelColor: AppColors.selectedLabelDark,
            labelStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
            unselectedLabelStyle:
                TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
            unselectedLabelColor: AppColors.unselectedLabelDark),
        appBarTheme: const AppBarTheme(
            backgroundColor: AppColors.appBarBackgroundDark,
            iconTheme: IconThemeData(color: AppColors.appBarIconDark)),
        // cardColor: HColors.cardColor,
        iconTheme: const IconThemeData(color: AppColors.iconDark),
        buttonTheme: const ButtonThemeData(buttonColor: AppColors.primary),
        brightness: Brightness.dark,
        backgroundColor: const Color(0xFFE5E5E5),
        // dividerColor: HColors.dividerColor,
        canvasColor: Colors.transparent,
        scaffoldBackgroundColor: AppColors.scaffoldBackgroundDark,
        // fontFamily: "Nunito",
        primaryTextTheme: TextTheme(
          headlineLarge: TextStyle(
              fontSize: AppDimensions.headerText, fontWeight: FontWeight.bold),
          headlineMedium: TextStyle(fontSize: AppDimensions.bodyTextMedium),
          bodyLarge: TextStyle(fontSize: AppDimensions.bodyTextLarge),
          bodyMedium: TextStyle(fontSize: AppDimensions.bodyTextMedium),
          bodySmall: TextStyle(fontSize: AppDimensions.bodyTextSmall),
        ),
        primaryIconTheme: const IconThemeData(color: AppColors.primaryIconDark),
      );

  static ThemeData get lightTheme => ThemeData(
      primarySwatch: getPrimarySwatch(AppColors.primary),
      primaryColor: AppColors.primary,
      primaryColorDark: AppColors.primaryDark,
      primaryColorLight: AppColors.primaryIconLight,
      tabBarTheme: const TabBarTheme(
          indicator: BoxDecoration(
              border: Border(
                  bottom:
                      BorderSide(width: 3.0, color: AppColors.selectedLabel))),
          indicatorSize: TabBarIndicatorSize.tab,
          labelColor: AppColors.selectedLabel,
          labelStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
          unselectedLabelStyle:
              TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
          unselectedLabelColor: AppColors.unselectedLabel),
      appBarTheme: const AppBarTheme(
          backgroundColor: AppColors.appBarBackground,
          iconTheme: IconThemeData(color: AppColors.appBarIcon)),
      // cardColor: HColors.cardColor,
      iconTheme: const IconThemeData(color: AppColors.icon),
      buttonTheme: const ButtonThemeData(buttonColor: AppColors.primary),
      brightness: Brightness.light,
      backgroundColor: const Color(0xFFE5E5E5),
      // dividerColor: HColors.dividerColor,
      canvasColor: Colors.transparent,
      scaffoldBackgroundColor: AppColors.scaffoldBackground,
      // fontFamily: "Nunito",
      primaryTextTheme: TextTheme(
        headlineLarge: TextStyle(
            fontSize: AppDimensions.headerText, fontWeight: FontWeight.bold),
        headlineMedium: TextStyle(fontSize: AppDimensions.bodyTextMedium),
        bodyLarge: TextStyle(fontSize: AppDimensions.bodyTextLarge),
        bodyMedium: TextStyle(fontSize: AppDimensions.bodyTextMedium),
        bodySmall: TextStyle(fontSize: AppDimensions.bodyTextSmall),
      ),
      primaryIconTheme: const IconThemeData(color: AppColors.primaryIconLight),
      listTileTheme: const ListTileThemeData(style: ListTileStyle.list));

  static MaterialColor getPrimarySwatch(Color color) {
    return MaterialColor(color.value, {
      50: color.withOpacity(.1),
      100: color.withOpacity(.2),
      200: color.withOpacity(.3),
      300: color.withOpacity(.4),
      400: color.withOpacity(.5),
      500: color.withOpacity(.6),
      600: color.withOpacity(.7),
      700: color.withOpacity(.8),
      800: color.withOpacity(.9),
      900: color.withOpacity(1),
    });
  }
}
