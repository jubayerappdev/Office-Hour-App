import 'package:flutter/material.dart';
import 'package:my_flutter_app_1/style/text_style.dart';
import 'package:my_flutter_app_1/theme/app_theme.dart';

class LightTheme extends AppTheme {
  @override
  AppColors get colors => LightColors();

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
  );
  @override
  FilledButtonTheme get filledButtonTheme => throw UnimplementedError();

  @override
  OutlinedButtonTheme get outlinedButtonTheme => throw UnimplementedError();
}

class LightColors extends AppColors {
  @override
  Color get primary => const Color(0xFF12BF52);

  @override
  Color get primary2nd => const Color(0xFF22C55E);

  @override
  Color get primary3rd => const Color(0xFF4ADE80);

  @override
  Color get primary4th => const Color(0xFF86EFAC);

  @override
  Color get primary5th => const Color(0xFFBBF7D0);

  @override
  Color get primary6th => const Color(0xFFDCFCE7);

  @override
  Color get secondary => const Color(0xFF03314B);

  @override
  Color get secondary2nd => const Color(0xFF03314B);

  @override
  Color get secondary3rd => const Color(0xFF226B8F);

  @override
  Color get secondary4th => const Color(0xFF5CA8D3);

  @override
  Color get secondary5th => const Color(0xFFBDE7FF);

  @override
  Color get secondary6th => const Color(0xFFF5FBFF);

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
}
