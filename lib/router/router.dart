import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:gorouter/pages/age.dart';
import 'package:gorouter/pages/back.dart';
import 'package:gorouter/pages/child_page.dart';
import 'package:gorouter/pages/home_page.dart';
import 'package:gorouter/pages/login.dart';
import 'package:gorouter/pages/profile_page.dart';
import 'package:gorouter/pages/user_page.dart';
import 'package:gorouter/router/routes_name.dart';

class RouterClass {
  final router = GoRouter(
    initialLocation: "/",
    errorPageBuilder: (context, state) {
      return const MaterialPage<dynamic>(
        child: Scaffold(
          body: Center(
            child: Text("this page is not found!!"),
          ),
        ),
      );
    },
    //redirect to the login page  if user is not logged in

    // redirect: (context, state) {
    //   bool isUserLoggedIn = UserData.isUerLoggedIn;
    //   if (isUserLoggedIn) {
    //     return "/";
    //   } else {
    //     return "/login";
    //   }
    // },
    routes: [
      //Home page
      GoRoute(
        name: "home",
        path: "/",
        builder: (context, state) {
          return const HomePage();
        },
      ),
      GoRoute(
        name: RouteNameClass.profile,
        path: "/profile",
        builder: (context, state) {
          return const ProfilePage();
        },
        routes: [
          GoRoute(
            name: "child",
            path: "child",
            builder: (context, state) {
              return const ChildPage();
            },
          )
        ],
      ),
      //use extra parameter
      // GoRoute(
      //   path: "/user",
      //   builder: (context, state) {
      //     final name = (state.extra as Map<String, dynamic>)["name"] as String;
      //     //final age = (state.extra as Map<String, dynamic>)["age"] as int;
      //     return UserPage(
      //       userName: name,
      //       //userAge: age,
      //     );
      //   },
      // ),
      //use path parmeter
      GoRoute(
        path: "/user/:name",
        builder: (context, state) {
          return UserPage(userName: state.pathParameters['name']!);
        },
      ),
      GoRoute(
        path: "/age",
        name: RouteNameClass.age,
        builder: (context, state) {
          final int age = state.uri.queryParameters['age'] == null
              ? 0
              : int.parse(state.uri.queryParameters['age']!);
          return AgePage(age: age);
        },
      ),
      //login route
      GoRoute(
        path: "/login",
        builder: (context, state) {
          return const LoginPage();
        },
      ),
      GoRoute(
        path: "/back",
        builder: (context, state) {
          return const BackPage();
        },
      )
    ],
  );
}
