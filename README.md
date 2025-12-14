# Flutter Profile Page – Responsive Multi-Column UI

A responsive profile page app built with **Flutter**. This project demonstrates a clean, modern interface that automatically adapts to any screen size — desktop, tablet, or mobile. It features multi-column layouts, custom icons, and a dynamic user interface designed for ease of use and readability.

<!-- ## Live Preview -->

<!-- [View Live Demo](#) --> <!-- Replace # with your live URL if you have one -->

## Features

- Fully responsive layout for desktop, tablet, and mobile
- Three-column design for Home, Set Your Profile, and Profile Tips
- Smooth hamburger menu navigation on smaller screens
- Modern dark UI with accent colors and custom icons
- Reusable Flutter widgets for inputs, cards, tips, and menus
- Works perfectly on Android, iOS, Web, macOS, Windows, and Linux

## Screenshots

### Desktop View

<p align="center">
  <img src="https://github.com/Syphaar/flutter-profile-page/blob/436a44cb82c6ee30c6030226cbeabbaa818fe32c/Screenshot%20(573).png" width="700" height="500" alt="Desktop View" />
</p>

*This is the desktop layout, showing all three columns: Home, Set Your Profile, and Profile Tips.*

### Tablet View

<p align="center">
  <img src="https://github.com/Syphaar/flutter-profile-page/blob/fbc3d3ec5f7ef869ea5a029c44b921a9d8ceff0d/Screenshot%20(574).png" width="700" height="500" alt="Tablet View" />
</p>

*Tablet layout with two columns for a more compact view, while still keeping content readable and accessible.*

### Mobile View

<p align="center">
  <img src="https://github.com/Syphaar/flutter-profile-page/blob/f6f883095856ccb941fc9c99b86fa4de8588531a/Screenshot%20(575).png" width="700" height="500" alt="Mobile View" />
</p>

*Mobile layout showing a single column with a hamburger menu for easy navigation.*

## How It Works

### Multi-Column Layout
Content is organized using `Row` and `Column` widgets. Each column handles a specific type of information for clarity:

1. **Home:** Edit your profile picture and input personal details.  
2. **Set Your Profile:** View metrics, achievements, or recent activity.  
3. **Profile Tips:** Provides helpful tips, buttons, and shortcuts for interaction.

### Responsive Design
The layout automatically adjusts depending on screen size. Column widths, font sizes, and padding scale dynamically to provide a consistent user experience across devices.

### Hamburger Menu Navigation
- On smaller screens, a hamburger menu icon opens a `Drawer` with navigation links to all pages.  
- On larger screens, all columns are permanently displayed, eliminating the need for a drawer.  
- Smooth animations enhance the opening and closing of the menu.

### Custom Icons & Colors
Icons like building, shield with tick, camera, and date/message enhance usability. Colors are applied consistently across the app to maintain a modern dark theme with accent highlights.

### Smooth Scrolling
All content is wrapped in `SingleChildScrollView` to ensure smooth vertical scrolling without disrupting the layout.

## Tech Stack

- **Flutter**  
- **Dart**

---

## Project Structure
```
lib/
├── columns/
│ ├── left_column.dart → Profile setup guide cards
│ ├── center_column.dart → Main form (username, institution, etc.)
│ └── right_column.dart → Tips & benefits section
├── constants/
│ └── colors.dart → Centralized color palette
├── custom_widgets/
│ ├── left.dart → Reusable guide cards
│ ├── center.dart → Inputs, dropdowns, form widgets
│ └── right.dart → Tip & benefit items
├── responsive_layout.dart → Core responsive logic
└── main.dart → App entry point
```

## How To Run

### Prerequisites
- Flutter SDK (≥3.19 recommended)  
- Dart SDK  

### Installation & Run
```bash
# 1. Clone the repository
git clone https://github.com/YourUsername/flutter-profile-page
cd flutter-profile-page

# 2. Get dependencies
flutter pub get

# 3. Run the app
flutter run
```
### Supported Platforms
flutter run -d chrome      # Web
flutter run -d windows     # Windows
flutter run -d macos       # macOS
flutter run -d linux       # Linux
flutter run -d android     # Android device/emulator
flutter run -d ios         # iOS device/simulator

### Contributing

Contributions are welcome! For significant changes, please open an issue first so we can discuss it.

---
Built with ❤️ by Mr. Sifon – don’t forget to star the repo if you find it useful!


