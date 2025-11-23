import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_flutter_app_1/style/text_style.dart';
import 'package:my_flutter_app_1/theme/light_theme.dart';
import 'package:my_flutter_app_1/theme/theme_cubit.dart';

class SocialButton extends StatelessWidget {
  const SocialButton({
    super.key,
    required this.onTap,
    required this.label,
    required this.iconPath,
    this.onlyIcon = false,
  });

  factory SocialButton.google({
    required VoidCallback onTap,
    bool onlyIcon = false,
  }) {
    return SocialButton(
      onTap: onTap,
      label: 'Login with Google',
      iconPath: 'asset/svg/ic_google.svg',
      onlyIcon: onlyIcon,
    );
  }

  factory SocialButton.apple({
    required VoidCallback onTap,
    bool onlyIcon = false,
  }) {
    return SocialButton(
      onTap: onTap,
      label: 'Login with Apple',
      iconPath: 'asset/svg/ic_apple.svg',
      onlyIcon: onlyIcon,
    );
  }

  factory SocialButton.mail({
    required VoidCallback onTap,
    bool onlyIcon = false,
  }) {
    return SocialButton(
      onTap: onTap,
      label: 'Login with Mail',
      iconPath: 'asset/svg/ic_mail2.svg',
      onlyIcon: onlyIcon,
    );
  }

  final VoidCallback onTap;
  final String label;
  final String iconPath;
  final bool onlyIcon;

  @override
  Widget build(BuildContext context) {
    if (onlyIcon) {
      return IconButton(
          onPressed: onTap,
          icon: SvgPicture.asset(
              iconPath,
          ),
        style: FilledButton.styleFrom(
          backgroundColor: context.colors.surface100,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
      );
    }
    return OutlinedButton.icon(
      onPressed: onTap,
      icon: SvgPicture.asset(iconPath),
      label: Text(
        label,
        style: TextStyles.titleLarge.copyWith(
          color: context.colors.secondary2nd,
        ),
      ),
      style: FilledButton.styleFrom(
        side: BorderSide(color: context.colors.surface200),
      ),
    );
  }
}
