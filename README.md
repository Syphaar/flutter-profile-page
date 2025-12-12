**FLUTTER PROFILE PAGE**
This is a responsive profile page app built with Flutter. It is designed to look and feel great across all devices, whether you’re using a desktop, tablet, or a mobile phone. This project demonstrates how I used multi-column layouts, custom icons, and created an user interface that automatically adjusts to different screen sizes and orientations.


**FEATURES**

Responsive Layout:
  The app intelligently adapts to screens of all sizes. On desktops, it displays content across multiple columns. On tablets and phones, it adjusts seamlessly for a clean and readable      layout.

Three-Column Design:
  The interface is divided into three main sections for clarity and ease of navigation:

   1) Home – This is where the user gets to edit their picture and fill in their respective details.
   2) Set Your Profile – Displays metrics, achievements, or recent activity.
   3) Profile Tips – Contains buttons, menus, and shortcuts for interaction.
    
Hamburger Menu Navigation:
  On smaller screens or mobile devices, a hamburger menu icon appears in the header. Clicking it toggles a side menu or drawer that lets users navigate to different pages like Home,
  Set Your Profile page or Profile Tips. On larger screens, the menu may disappears and the full layout is shown permanently for easier access.

Custom Icons & Colors:
  Icons such as building, shield with tick, camera, and date/message are used to enhance usability and aesthetics. Each icon can be customized in color to fit the app’s theme, giving it 
  a modern dark look with accent highlights.

Modern UI Design:
  It utilizes Flutter’s Material design components with thoughtful spacing, shadows, and typography to create a clean, professional interface.

Smooth Scrolling & Padding Control:
  Implements SingleChildScrollView for smooth vertical scrolling. I ensured I used consistent spacing across pages, keeping the UI neat and uncluttered.




How It Works

Multi-Column Layout:
  It uses Row and Column widgets to organize content logically and responsively. Each column handles a different type of information, making the layout clean and easy to navigate.

Responsive Design:
  The app detects screen size and adjusts the layout dynamically. Column widths, font sizes, and padding are all modified to provide the best user experience on each device.

Hamburger Menu & Page Navigation:
  1) The hamburger icon is implemented using IconButton inside the app bar or header.
  2) Tapping the hambuger icon opens a Drawer (side menu) with a list of pages.
  3) Each menu item is a ListTile that navigates to a different screen.
  4) On larger screens the pages are permanently arranged beside each other while on smaller screens it toggles open and closed with smooth animation.

Custom Icons & Colors:
  Icons are sourced from Flutter’s built-in Icons library and customized using IconTheme or direct color assignment. This ensures a consistent style and makes key actions visually 
  prominent.

Scroll Management:
  The app uses SingleChildScrollView to handle content overflow while maintaining clean spacing, ensuring all content is visible and easy to interact with.


**THIS IS HOW IS LOOKS ON DESKTOP**
![Desktop View](https://github.com/Syphaar/flutter-profile-page/blob/436a44cb82c6ee30c6030226cbeabbaa818fe32c/Screenshot%20(573).png)

**THIS IS HOW IT LOOKS ON TABLET**
![Tablet View](https://github.com/Syphaar/flutter-profile-page/blob/fbc3d3ec5f7ef869ea5a029c44b921a9d8ceff0d/Screenshot%20(574).png)

**THIS IS HOW IT LOOKS ON TABLET**
![Mobile View](https://github.com/Syphaar/flutter-profile-page/blob/f6f883095856ccb941fc9c99b86fa4de8588531a/Screenshot%20(575).png)
  
