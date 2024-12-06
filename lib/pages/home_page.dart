import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:gorouter/router/routes_name.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Home page",
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  GoRouter.of(context).goNamed(RouteNameClass.profile);
                },
                child: const Text("Got to profile"),
              ),
              ElevatedButton(
                onPressed: () {
                  GoRouter.of(context).go("/profile/child");
                },
                child: const Text("Got to Child page"),
              ),
              ElevatedButton(
                onPressed: () {
                  // GoRouter.of(context).go("/user", extra: {
                  //   "name": "Pradeep prasanna jayathialaka",
                  //   "age": 25,
                  // });
                  String name = "Pradeep prasana";
                  GoRouter.of(context).go("/user/$name");
                },
                child: const Text("Got to user page"),
              ),
              ElevatedButton(
                onPressed: () {
                  GoRouter.of(context).goNamed(RouteNameClass.age,
                      queryParameters: {"age": "24"});
                },
                child: const Text("Got to Age page"),
              ),
              ElevatedButton(
                onPressed: () {
                  GoRouter.of(context).push("/back");
                },
                child: const Text("Got to Back page"),
              ),
              ElevatedButton(
                onPressed: () {
                  GoRouter.of(context).pushNamed(RouteNameClass.products);
                },
                child: const Text("Got to products page"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
