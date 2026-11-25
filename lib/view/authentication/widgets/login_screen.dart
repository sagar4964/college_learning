import '../../../constrant/app_images.dart';
import '../../../registration_screen.dart';
import '../../../widgets/social_media_card.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();

  bool visibility = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(backgroundColor: Colors.transparent, elevation: 0),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(child: Text("Sign In", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold))),
            const SizedBox(height: 40),

            Row(
              children: [
                Expanded(
                  child: SocialMediaCard(label: "Facebook", image: fbImage),
                ),
                Expanded(
                  child: SocialMediaCard(label: "Google", image: googleImage),
                ),
              ],
            ),
            const SizedBox(height: 20),
            TextFormField(
              controller: emailController,
              decoration: InputDecoration(
                hintText: "abc@gmail.com",
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: const BorderSide(width: 1, color: Colors.transparent),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: const BorderSide(width: 1, color: Colors.blue),
                ),
                filled: true,
                fillColor: Colors.grey.shade200,
              ),
            ),
            const SizedBox(height: 20),
            TextFormField(
              controller: passController,
              obscureText: visibility,
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      visibility = !visibility;
                    });
                  },
                  icon: Icon(
                    visibility == true
                        ? Icons.visibility_off
                        : Icons.visibility,
                  ),
                ),
                hintText: "*******",
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: const BorderSide(width: 1, color: Colors.transparent),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: const BorderSide(width: 1, color: Colors.blue),
                ),
                filled: true,
                fillColor: Colors.grey.shade200,
              ),
            ),
            TextButton(onPressed: () {}, child: const Text("Forget password")),
            SizedBox(
              height: 50,
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                ),
                onPressed: () {},
                child: const Text("Sign In"),
              ),
            ),

            TextButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context)
                    => const RegistrationScreen(
                        name: "sandis"),
                  ),
                );
              },
              child: const Text("Don't have an account? Sign UP"),
            ),
          ],
        ),
      ),
    );
  }
}
