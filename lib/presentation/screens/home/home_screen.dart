import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_clean_bloc_architecture/application/application.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final themeCubit = context.watch<ThemeCubit>();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter App'),
        leading: IconButton(
          icon: themeCubit.state.isDarkmode
              ? const Icon(Icons.light_mode_outlined)
              : const Icon(Icons.dark_mode_outlined),
          onPressed: () {
            themeCubit.toggleTheme();
          },
        ),
      ),
      body: const Center(
        child: Text('Hello World'),
      ),
    );
  }
}
