import 'package:doctor_app/core/routing/routs.dart';
import 'package:doctor_app/feature/login/ui/login_screen.dart';
import 'package:doctor_app/feature/onboarding/onboarding_screen.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  static final GoRouter router = GoRouter(
    routes: [
      GoRoute(path: '/', builder: (context, state) => const OnbordingScreen()),
      GoRoute(
        path: Routs.loginScreen,
        builder: (context, state) => const LoginScreen(),

      ),

    ],
  );
}
