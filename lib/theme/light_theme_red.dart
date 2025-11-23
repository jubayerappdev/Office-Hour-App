import 'package:flutter/material.dart';
import 'package:my_flutter_app_1/style/text_style.dart';
import 'package:my_flutter_app_1/theme/app_theme.dart';

import '../style/custom_outlined_input_border.dart';

class LightThemeRed extends AppTheme {
  @override
  AppColors get colors => LightColorsRed();

  @override
  TextTheme get textTheme => TextTheme(
    headlineLarge: TextStyles.headlineLarge,
    headlineMedium: TextStyles.headlineMedium,
    headlineSmall: TextStyles.headlineSmall,
    displayLarge: TextStyles.displayLarge,
    displayMedium: TextStyles.displayMedium,
    displaySmall:TextStyles.displaySmall,
    titleLarge:TextStyles.titleLarge,
    titleMedium:TextStyles.titleMedium,
    titleSmall:TextStyles.titleSmall,
    labelLarge:TextStyles.labelLarge,
    labelMedium:TextStyles.labelMedium,
    labelSmall:TextStyles.labelSmall,
    bodyLarge:TextStyles.bodyLarge,
    bodyMedium:TextStyles.bodyMedium,
    bodySmall:TextStyles.bodySmall,
  );

  @override
  ThemeData get theme => ThemeData(
    useMaterial3: true,
    appBarTheme: AppBarTheme(
      backgroundColor: colors.background,
      foregroundColor: colors.surface900,
      titleTextStyle: TextStyles.labelMedium,
    ),
    filledButtonTheme: filledButtonThemeData,
    outlinedButtonTheme: outlinedButtonThemeData,
    inputDecorationTheme: inputDecorationTheme,

  );

  @override

  FilledButtonThemeData get filledButtonThemeData => FilledButtonThemeData(
    style: FilledButton.styleFrom(
      backgroundColor: colors.primary,
      padding: const EdgeInsets.all(16),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      textStyle: TextStyles.titleLarge,
      foregroundColor: colors.buttonTextColor,
      disabledBackgroundColor: colors.surface100,
    ),
  );

  @override

  OutlinedButtonThemeData get outlinedButtonThemeData => OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      foregroundColor: colors.primary,
      backgroundColor: colors.background,
      padding: const EdgeInsets.all(16),
      textStyle: TextStyles.titleLarge,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
    ).copyWith(
        side: WidgetStateBorderSide.resolveWith(
              (states){
            if(states.contains(WidgetState.disabled)){
              return BorderSide(color: colors.surface200);
            }
            return BorderSide(color: colors.primary);
          },
        )),

  );

  @override

  InputDecorationTheme get inputDecorationTheme => InputDecorationTheme(
    filled: true,
    fillColor: colors.surface50,
    suffixIconColor: colors.surface500,
    labelStyle: TextStyles.bodyMedium.copyWith(
      color: colors.surface400,
      fontWeight: FontWeight.w400,
    ),
    focusedBorder: CustomOutlinedInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: BorderSide(color: colors.primary),
    ),
    enabledBorder: CustomOutlinedInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: const BorderSide(color: Colors.transparent),
    ),
  );

}

class LightColorsRed extends AppColors {
  @override
  Color get primary => const Color(0xFFBF1212);

  @override
  Color get primary2nd => const Color(0xFFC52222);

  @override
  Color get primary3rd => const Color(0xFFDE4A4A);

  @override
  Color get primary4th => const Color(0xFFEF8686);

  @override
  Color get primary5th => const Color(0xFFF7B0B0);

  @override
  Color get primary6th => const Color(0xFFFCE7E7);

  @override
  Color get secondary => const Color(0xFF4B0303);

  @override
  Color get secondary2nd => const Color(0xFF4B0303);

  @override
  Color get secondary3rd => const Color(0xFF8F2222);

  @override
  Color get secondary4th => const Color(0xFFD35C5C);

  @override
  Color get secondary5th => const Color(0xFFFFBDBD);

  @override
  Color get secondary6th => const Color(0xFFFFF5F5);

  @override
  Color get success => const Color(0xFF22C55E);

  @override
  Color get warning => const Color(0xFFFACC15);

  @override
  Color get error => const Color(0xFFF75555);

  @override
  Color get surface => const Color(0xFFF8FAFC);

  @override
  Color get surface50 => const Color(0xFFF8FAFC);

  @override
  Color get surface100 => const Color(0xFFF1F5F9);

  @override
  Color get surface200 => const Color(0xFFE2E8F0);

  @override
  Color get surface300 => const Color(0xFFCBD5E1);

  @override
  Color get surface400 => const Color(0xFF94A3B8);

  @override
  Color get surface500 => const Color(0xFF64748B);

  @override
  Color get surface600 => const Color(0xFF475569);

  @override
  Color get surface700 => const Color(0xFF334155);

  @override
  Color get surface800 => const Color(0xFF1E293B);

  @override
  Color get surface900 => const Color(0xFF121826);

  @override
  Color get background => Colors.white;

  @override

  Color get buttonTextColor => Colors.white;

}



