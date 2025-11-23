import 'package:flutter/material.dart';
import 'package:my_flutter_app_1/theme/app_theme.dart';
import 'package:my_flutter_app_1/theme/light_theme.dart';
import 'package:my_flutter_app_1/theme/light_theme_blue.dart';
import 'package:my_flutter_app_1/theme/light_theme_red.dart';
import 'package:my_flutter_app_1/theme/theme_cubit.dart';
import 'package:my_flutter_app_1/widget/social_button.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ThemeCubit(),
      child: BlocBuilder<ThemeCubit,AppTheme>(
        builder: (context, state){
          return MaterialApp(

            title: 'Flutter Demo',
            theme: state.theme,
            home: Scaffold(
              backgroundColor: Colors.white,
              appBar: AppBar(title: const Text("Counter"), centerTitle: true),
              body: Padding(
                padding: const EdgeInsets.all(8),
                child: Column(
                  children: [
                    SizedBox(
                      width: double.maxFinite,
                      child: FilledButton(
                        onPressed: () {
                          context.changeTheme(LightTheme());
                        },
                        child: Text('Primary Theme'),
                      ),
                    ),
                    const SizedBox(height: 12),
                    SizedBox(
                      width: double.maxFinite,
                      child: OutlinedButton(
                        onPressed: () {
                          context.changeTheme(LightThemeBlue());
                        },
                        child: Text('Blue Theme'),
                      ),
                    ),
                    const SizedBox(height: 12),
                    SizedBox(
                      width: double.maxFinite,
                      child: FilledButton(
                        onPressed: () {
                          context.changeTheme(LightThemeRed());
                        },
                        child: Text('Red Theme'),
                      ),
                    ),
                    const SizedBox(height: 12),
                    TextField(
                      decoration: InputDecoration(label: Text('Enter Email')),
                    ),
                    const SizedBox(height: 12),
                    TextField(
                      decoration: InputDecoration(
                        label: Text('Enter Password'),
                        suffixIcon: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.visibility_off_outlined),
                        ),
                      ),
                    ),

                    const SizedBox(height: 12),
                    SizedBox(
                      width: double.maxFinite,
                      child: SocialButton.google(

                        onTap: () {},

                      ),
                    ),
                    const SizedBox(height: 12),
                    SizedBox(
                      width: double.maxFinite,
                      child: SocialButton.apple(

                        onTap: () {},
                      ),
                    ),
                    const SizedBox(height: 12),
                    SizedBox(
                      width: double.maxFinite,
                      child: SocialButton.mail(

                        onTap: () {},
                      ),
                    ),
                    const SizedBox(height: 12),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SocialButton.google(
                          onlyIcon: true,
                          onTap: (){},
                        ),
                        SocialButton.apple(
                          onlyIcon: true,
                          onTap: (){},
                        ),
                        SocialButton.mail(
                          onlyIcon: true,
                          onTap: (){},
                        )
                      ],
                    )

                  ],
                ),
              ),
            ),
          );
        },
      ),
    );

  }
}
