# Booking.com — Flutter Car Rental App

A mobile car rental browsing application built with Flutter, inspired by the Booking.com design language. Users can browse a curated list of luxury and performance vehicles, view detailed car information, and navigate through a clean, structured UI.

---

## Features

- **Animated Splash Screen** — Branded entry screen with a 3-second auto-navigation to the home screen
- **Custom App Bar** — Persistent top bar with menu toggle, messaging icon, and in-app notification dialog
- **Category Filter Row** — Horizontally scrollable pill-style tabs for Stays, Flights, Car, Taxi, and Track categories
- **Search Box** — Styled search input with wallet and history action icons
- **Car Grid** — Responsive 2-column grid displaying car cards with network images and gradient overlays
- **Progressive Disclosure** — "See more" button to expand the full car list from an initial preview of 4 items
- **Car Details Screen** — Full-screen view with hero image, car name, description, price, and a "Buy Now" CTA
- **Sidebar Drawer** — Profile section with avatar, user name, email, navigation links, and an expandable "Our Services" section
- **Bottom Navigation Bar** — Fixed 4-tab navigator (Home, Search, Favourites, Profile)

---

## Screenshots

| Splash | Home | Car Details | Sidebar |
|--------|------|-------------|---------|
| `[screenshot]` | `[screenshot]` | `[screenshot]` | `[screenshot]` |

> Replace placeholders with actual screenshots once available.

---

## Tech Stack

| Layer | Technology |
|---|---|
| Framework | Flutter 3.x |
| Language | Dart 3.x |
| Fonts | Ubuntu (via `pubspec.yaml`) |
| Images | Unsplash CDN (network images) |
| Navigation | Flutter Navigator 2.0 (imperative) |
| State Management | `setState` (local widget state) |

---

## Project Structure

```
lib/
├── main.dart                    # App entry point
├── app.dart                     # MaterialApp root with theme
│
├── data/
│   └── car_data.dart            # Static car data list
│
├── screens/
│   ├── splash/
│   │   └── splash_screen.dart   # Timed splash screen
│   └── home/
│       └── home_screen.dart     # Main screen scaffold
│
└── widgets/
    ├── appbar/
    │   └── app_bar.dart         # Custom AppBar + global ScaffoldKey
    ├── appbar_row/
    │   └── app_bar_row.dart     # Horizontal category filter row
    ├── car/
    │   ├── car.dart             # CarModel data class + CarCard widget
    │   ├── car_details.dart     # Car details screen
    │   └── car_grid.dart        # Stateful grid with show/hide logic
    ├── navbar/
    │   └── nav_bar.dart         # Bottom navigation bar
    ├── search_box/
    │   └── search_box.dart      # Search input widget
    └── sidebar/
        └── side_bar.dart        # Drawer with profile and nav links
```

---

## Installation

### Prerequisites

- [Flutter SDK](https://docs.flutter.dev/get-started/install) `>=3.0.0`
- Dart `>=3.0.0`
- Android Studio / VS Code with Flutter extension
- A connected device or emulator

### Steps

1. **Clone the repository**
   ```bash
   git clone https://github.com/your-username/booking-car-app.git
   cd booking-car-app
   ```

2. **Install dependencies**
   ```bash
   flutter pub get
   ```

3. **Add the Ubuntu font** (if not already in `pubspec.yaml`)

   Ensure your `pubspec.yaml` includes:
   ```yaml
   flutter:
     fonts:
       - family: Ubuntu
         fonts:
           - asset: assets/fonts/Ubuntu-Regular.ttf
           - asset: assets/fonts/Ubuntu-Bold.ttf
             weight: 700
   ```
   Then place the font files under `assets/fonts/`.

4. **Run on a device or emulator**
   ```bash
   flutter run
   ```

---

## How to Run

```bash
# Debug mode
flutter run

# Release mode (Android)
flutter build apk --release

# Release mode (iOS)
flutter build ios --release
```

> **Note:** The app fetches car images from Unsplash CDN. Ensure the device has an active internet connection.

---

## UI / UX Notes

- **Color palette** is anchored to `Colors.blue[900]` to reflect the Booking.com brand identity
- **Car cards** use a `LinearGradient` overlay (black to transparent, bottom-up) for legible text over busy images without a separate container
- **AppBarRow** uses `Stack` + `BorderRadius` pill buttons — a lightweight alternative to `TabBar` that avoids `TabController` overhead for purely visual tabs
- The `scaffoldKey` is declared globally in `app_bar.dart` and shared with `home_screen.dart` — a deliberate, minimal approach for drawer control in a single-screen app
- `GridView` uses `shrinkWrap: true` + `NeverScrollableScrollPhysics` to embed it inside a parent `SingleChildScrollView`, preventing nested scroll conflicts

---

## Future Improvements

- **Search functionality** — Wire up the search box to filter cars by name or price in real time
- **Favourites** — Persist liked cars using `shared_preferences` or `hive`
- **State management upgrade** — Migrate to `Riverpod` or `Bloc` as the feature set grows
- **Remote data source** — Replace static `car_data.dart` with a REST API or Firebase Firestore
- **Tab switching** — Make the `AppBarRow` category pills functional with routing or a tab view
- **Bottom nav state** — Lift `currentIndex` state and wire each tab to its own screen
- **Theming** — Introduce a `ThemeData` design token system with light/dark mode support
- **Image caching** — Add `cached_network_image` to reduce redundant network requests and improve perceived performance

---

## License

This project is licensed under the [MIT License](LICENSE).

```
MIT License

Copyright (c) 2025 Saad Sinan

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
```
