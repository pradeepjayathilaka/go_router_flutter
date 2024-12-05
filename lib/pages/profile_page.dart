import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Profile page",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                GoRouter.of(context).go("/");
              },
              child: const Text("Go to Home"),
            ),
            ElevatedButton(
              onPressed: () {
                GoRouter.of(context).go("/profile/child");
              },
              child: const Text("Got to Child page"),
            )
          ],
        ),
      ),
    );
  }
}
