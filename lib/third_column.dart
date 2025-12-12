import 'package:flutter/material.dart';

class ThirdColumn extends StatelessWidget {
  // optional scaffold key
  final GlobalKey<ScaffoldState>? scaffoldKey;

  const ThirdColumn({
    super.key,
    this.scaffoldKey,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF151B29),
      child: Stack(
        children: [
          // Top hamburger row
          if (scaffoldKey != null)
            Positioned(
              top: 16,
              left: 16,
              child: IconButton(
                icon: const Icon(Icons.menu, color: Colors.white),
                onPressed: () => scaffoldKey!.currentState!.openDrawer(),
              ),
            ),

          // Scrollable content
          Padding(
            padding: const EdgeInsets.only(top: 100, left: 16, right: 16, bottom: 16),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Profile Tips",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 16),
                  _buildTipCard(
                    icon: Icons.check_circle_outline,
                    title: "Choose Wisely",
                    text: "Your username is permanent and identifies you across the platform.",
                    iconColor: const Color(0xFF4CA366),
                  ),
                  _buildTipCard(
                    icon: Icons.verified_user,
                    title: "Be Authentic",
                    text: "Use your real educational details to connect with genuine peers",
                    iconColor: const Color(0xFFB7D9E7),
                  ),
                  _buildTipCard(
                    icon: Icons.photo_camera,
                    title: "Quality Photos",
                    text: "Upload clear photos for better recognition within your campus",
                    iconColor: const Color(0xFFF7951D),
                  ),

                  const SizedBox(height: 16),
                  // Profile Benefits card
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: const Color(0xFF121117),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text(
                          "Profile Benefits",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(height: 16),
                        _buildBenefitRow(Icons.group, "Connect with peers"),
                        _buildBenefitRow(Icons.date_range, "Join campus events"),
                        _buildBenefitRow(Icons.chat, "Access discussions"),
                        _buildBenefitRow(Icons.star, "Unlock premium features"),
                      ],
                    ),
                  ),

                  const SizedBox(height: 16),
                  // Pro Tip card
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: const Color(0xFF222E3C),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        Icon(Icons.lightbulb, size: 40, color: Colors.white),
                        SizedBox(height: 8),
                        Text(
                          "Pro Tip",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          "Completing all profile steps maximizes your visibility and benefits.",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTipCard({
    required IconData icon,
    required String title,
    required String text,
    required Color iconColor,
  }) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFF121117),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Icon(icon, size: 32, color: iconColor),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  text,
                  style: const TextStyle(color: Color(0xFF646369)),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _buildBenefitRow(IconData icon, String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 7),
      child: Row(
        children: [
          Icon(icon, size: 24, color: const Color(0xFF32C45B)),
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              text,
              style: const TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
