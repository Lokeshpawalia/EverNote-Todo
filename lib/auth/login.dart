import 'package:evernote_todo/auth/create_account.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        // Prevent overflow
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 150),
              SizedBox(
                height: 80,
                width: 80,
                child: Image.asset("assets/images/elephantIcon.png"),
              ),
              const SizedBox(height: 10),
              Text(
                'Sign in',
                style: GoogleFonts.raleway(
                    textStyle: const TextStyle(
                        fontSize: 24, fontWeight: FontWeight.w500)),
              ),
              const SizedBox(height: 5),
              Text(
                'to continue to your Evernote account',
                style: GoogleFonts.raleway(
                    textStyle: const TextStyle(
                        fontSize: 14, fontWeight: FontWeight.w500)),
              ),
              const SizedBox(height: 20),
              EmailInputField(),
              const SizedBox(height: 10),
              InkWell(
                onTap: () {},
                child: Container(
                  height: 50,
                  width: double.infinity,
                  // Make it full width
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    color: Colors.white,
                    border: Border.all(color: Colors.grey),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    'Continue',
                    style: TextStyle(
                      color: Colors.black.withOpacity(0.8),
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  Expanded(
                      child: Divider(
                          thickness: 2, color: Colors.black.withOpacity(0.3))),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Text("or",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w400)),
                  ),
                  Expanded(
                      child: Divider(
                          thickness: 2, color: Colors.black.withOpacity(0.3))),
                ],
              ),
              const SizedBox(height: 10),
              SocialButton(
                callback: () {},
                socialMediaName: 'Continue with Google',
                icon: const Icon(Icons.g_mobiledata,
                    color: Colors.greenAccent, size: 25),
              ),
              const SizedBox(height: 10),
              SocialButton(
                callback: () {},
                socialMediaName: 'Continue with Apple',
                icon: const Icon(Icons.apple, color: Colors.white, size: 25),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account? Sign up",
                    style: GoogleFonts.raleway(
                        textStyle: const TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w500)),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const CreateAccount()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Text(
                        "Sign up",
                        style: GoogleFonts.raleway(
                            textStyle: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.blue)),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}

class EmailInputField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: TextInputType.emailAddress, // Set input type to email
      decoration: InputDecoration(
        labelText: "Email",
        hintText: "Enter your email",
        //prefixIcon: Icon(Icons.email),  // Email icon
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8), // Slight curve on edges
          borderSide: BorderSide(color: Colors.grey),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(
              color: Colors.blue, width: 2), // Blue border when active
        ),
      ),
    );
  }
}

class SocialButton extends StatelessWidget {
  const SocialButton(
      {super.key,
      required this.socialMediaName,
      required this.icon,
      this.callback});

  final String socialMediaName;
  final Icon icon;
  final VoidCallback? callback;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        callback!();
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.black87, // Set background color
        elevation: .05, // Add slight shadow
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(3), // Rounded corners
        ),
        padding: const EdgeInsets.symmetric(vertical: 8), // Adjust padding
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          icon,
          const SizedBox(width: 10),
          Text(
            socialMediaName,
            style: TextStyle(
              color: Colors.white, // Text color
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
