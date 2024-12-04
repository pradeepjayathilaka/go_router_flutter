import 'package:go_router/go_router.dart';
import 'package:gorouter/pages/home_page.dart';

class RouterClass {
  final router = GoRouter(
    routes: [
      //Home page
      GoRoute(
        path: "/",
        builder: (context, state) {
          return const HomePage();
        },
      )
    ],
  );
}
