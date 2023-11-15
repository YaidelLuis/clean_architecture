import 'package:bloc/bloc.dart';
import 'package:flutter_clean_bloc_architecture/presentation/presentation.dart';
import 'package:go_router/go_router.dart';

final _publicRouter = GoRouter(routes: [
  GoRoute(
    path: '/',
    builder: (context, state) => const HomeScreen(),
  ),
]);

class SingleUserCubit extends Cubit<GoRouter> {
  SingleUserCubit() : super(_publicRouter);

  void goBack() {
    state.pop();
  }

  void goHome() {
    state.go('/');
  }
}
