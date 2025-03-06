import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AuthHome extends StatefulWidget {
  const AuthHome({super.key});

  @override
  State<AuthHome> createState() => _AuthHomeState();
}

class _AuthHomeState extends State<AuthHome> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: screenHeight * 0.45,
            color: Colors.blue,
            child: Image(
              image: AssetImage(
                'assets/images/cycle.jpg',
              ),
              fit: BoxFit.fitHeight,
            ),
          ),
          Container(
            height: screenHeight * 0.55,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'WELCOME TO EVERNOTE!',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w300,
                    color: Colors.grey.shade400,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  'Work. School. Life.',
                  style: GoogleFonts.lato(
                      TextStyle(fontSize: 24, fontWeight: FontWeight.w500)),
                ),
                const Text(
                  'Remember everything',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                ),
                const SizedBox(height: 16),

                SocialButton(
                  callback: () {},
                  socialMediaName: 'Continue with Google',
                  icon: const Icon(Icons.g_mobiledata,
                      color: Colors.greenAccent, size: 25),
                ),
                const SizedBox(height: 8),
                SocialButton(
                  callback: () {},
                  socialMediaName: 'Continue with Apple',
                  icon: const Icon(Icons.apple, color: Colors.white, size: 25),
                ),
                const SizedBox(height: 16),

                // Divider
                Row(
                  children: [
                    Expanded(
                        child: Divider(
                            thickness: 2,
                            color: Colors.black.withOpacity(0.3))),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Text("or",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w400)),
                    ),
                    Expanded(
                        child: Divider(
                            thickness: 2,
                            color: Colors.black.withOpacity(0.3))),
                  ],
                ),
                const SizedBox(height: 16),

                // Create Account Button
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: InkWell(
                        onTap: () {}, // Safely call callback if not null
                        child: Container(
                          height: 35,
                          width: screenWidth * 0.4,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            // Fixed border radius
                            color: Colors.white,
                            border: Border.all(
                                color: Colors.grey), // Optional border
                          ),
                          alignment: Alignment.center,
                          child: Text(
                            'Create Account',
                            style: TextStyle(
                              color: Colors.black.withOpacity(0.8),
                              // Opacity value fixed
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: InkWell(
                        onTap: () {}, // Safely call callback if not null
                        child: Container(
                          height: 35,
                          width: screenWidth * 0.4,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            // Fixed border radius
                            color: Colors.white,
                            border: Border.all(
                                color: Colors.grey), // Optional border
                          ),
                          alignment: Alignment.center,
                          child: Text(
                            'Log In',
                            style: TextStyle(
                              color: Colors.black.withOpacity(0.8),
                              // Opacity value fixed
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
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
