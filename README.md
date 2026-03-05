# Mobile_Piscine

This repository contains projects and exercises focused on bridging mobile application development using **Flutter** and **Dart**. The curriculum is designed to gradually introduce mobile programming concepts, UI building, and application logic.

## Technology Stack
- **Framework:** [Flutter](https://flutter.dev/) - Google's UI toolkit for building natively compiled applications for mobile, web, and desktop from a single codebase.
- **Language:** [Dart](https://dart.dev/)

---

## Modules Overview

### [Mobile Module 00: Introduction to Mobile Development](./mobileModule00)
This module introduces the fundamentals of mobile development, familiarizing students with the Flutter framework, its widget tree, and basic UI components.

- **[Exercise 00: A basic display](./mobileModule00/ex00)** 
  Setting up the development environment, creating a basic blank Flutter application, and displaying simple text centered on the screen.
- **[Exercise 01: Say Hello to the World](./mobileModule00/ex01)** 
  Handling basic user interactions. Implementing a button that alternates text on the screen when pressed.
- **[Exercise 02: More Buttons](./mobileModule00/ex02)** 
  Building a more complex UI layout. Recreating the visual interface of a calculator with a display section and a fully styled keypad layout.
- **[Exercise 03: It's Alive!](./mobileModule00/ex03)** 
  Adding state and functional logic to the calculator UI built in the last exercise. Making the buttons clickable and functional to perform actual calculations.

### [Mobile Module 01: Structure and Logic](./mobileModule01)
This module focuses on application structure, view routing, and more advanced UI layout logic, establishing the groundwork for a Weather application.

- **[Exercise 00: BottomBar](./mobileModule01/ex00)** 
  Implementing a `BottomNavigationBar`. Learning how to manage state to navigate and switch between different screen views or tabs effectively within a single structural shell.
- **[Exercise 01: TopBar (Weather App)](./mobileModule01/ex01/weather_app)** 
  Extending the fundamental layout by introducing an `AppBar` with search functionalities. Implementing foundational screens (such as "Currently", "Today", "Weekly") that make up a Weather App.

---

## How to Build and Run
To test and preview any of the exercises, ensure your system has [Flutter installed](https://docs.flutter.dev/get-started/install) and configured properly.

1. Navigate to a specific exercise directory:
   ```bash
   cd mobileModule00/ex00
   ```
2. Fetch required dependencies:
   ```bash
   flutter pub get
   ```
3. Run the application on a connected device, emulator, or web browser:
   ```bash
   flutter run
   ```

