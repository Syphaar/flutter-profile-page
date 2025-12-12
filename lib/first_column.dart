import 'package:flutter/material.dart';

class FirstColumn extends StatelessWidget {
  final bool showHamburger;
  final GlobalKey<ScaffoldState>? scaffoldKey;

  const FirstColumn({
    super.key,
    required this.showHamburger,
    required this.scaffoldKey,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF151B29),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(
                top: 100, left: 16, right: 16, bottom: 16),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Set your Profile",
                    style:
                    TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                  const SizedBox(height: 20),
                  _buildProfileCard(
                      color: const Color(0xFF121117),
                      icon: Icons.person,
                      iconBgColor: const Color(0xFF25252D),
                      title: "Username",
                      text: "Choose a unique username that represents you. It must start with a letter or underscore."),
                  _buildProfileCard(
                      color: const Color(0xFF121117),
                      icon: Icons.school,
                      iconBgColor: const Color(0xFF25252D),
                      title: "Educational Rank",
                      text: "Select your educational status to connect with the right community."),
                  _buildProfileCard(
                      color: const Color(0xFF121117),
                      icon: Icons.location_city,
                      iconBgColor: const Color(0xFF25252D),
                      title: "Institutional Name",
                      text: "Add your school or university to find classmates and campus activities."),
                  _buildProfileCard(
                      color: const Color(0xFF121117),
                      icon: Icons.photo,
                      iconBgColor: const Color(0xFF25252D),
                      title: "Add Photo",
                      text: "Add profile and cover photo to personalize your profile. Photos upload instantly!"),

                  Container(
                    margin: const EdgeInsets.only(top: 16),
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: const Color(0xFF252E3F),
                      border: Border.all(color: const Color(0xFF3C4755)),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      children: const [
                        Icon(Icons.warning, color: Colors.white),
                        SizedBox(width: 10),
                        Expanded(
                            child: Text(
                                "Complete your profile to unlock all features and connect with your campus community.",
                                style: TextStyle(color: Colors.white, fontSize: 14),
                            )
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          if (showHamburger)
            Positioned(
              top: 16,
              left: 16,
              child: IconButton(
                icon: const Icon(
                  Icons.menu,
                  color: Colors.white,
                ),
                onPressed: () =>
                    scaffoldKey!.currentState!.openDrawer(),
              ),
            ),
        ],
      ),
    );
  }

  Widget _buildProfileCard({
    required Color color,
    required IconData icon,
    required Color iconBgColor,
    required String title,
    required String text,
  }) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: const Color(0xFF1F222C)),
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: iconBgColor,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Icon(icon, size: 32, color: const Color(0xFFABDBE4)),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  text,
                  style: const TextStyle(color: Colors.white, fontSize: 14),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}