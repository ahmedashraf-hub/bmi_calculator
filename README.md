# BMI Calculator

A beautiful and intuitive BMI (Body Mass Index) Calculator built with Flutter. This app helps users calculate their BMI by selecting their gender, height, and weight through an interactive and user-friendly interface.

## Features

- 🎨 **Modern UI Design** - Clean and intuitive user interface
- 👥 **Gender Selection** - Choose between male and female
- 📏 **Interactive Rulers** - Custom ruler widgets for height and weight input
- 📊 **BMI Results** - Instant BMI calculation with health category
- 📱 **Cross-Platform** - Supports Android, iOS, Linux, macOS, Windows, and Web
- 🔄 **State Management** - Powered by Flutter Bloc for efficient state management
- 🖥️ **Device Preview** - Built-in device preview for testing different screen sizes

## Screenshots

<p align="center">
  <img src="screenshots/home_screen.png" width="250" alt="Home Screen - Gender Selection"/>
  <img src="screenshots/measurement_screen.png" width="250" alt="Measurement Screen"/>
  <img src="screenshots/result_screen.png" width="250" alt="Result Screen"/>
</p>

### Features Showcase

- **Home Screen**: Choose your gender with an intuitive card-based interface
- **Measurement Screen**: Interactive rulers for precise height and weight input
- **Result Screen**: Instant BMI calculation with health category and recommended weight range

## Architecture

This project follows a **clean architecture** pattern with feature-based organization:

```
lib/
├── core/
│   ├── widgets/         # Reusable custom widgets
│   ├── app_colors.dart  # Application color theme
│   └── app_styles.dart  # Application text styles
├── features/
│   ├── Home/
│   │   └── presentation/
│   │       ├── cubit/    # Gender selection state management
│   │       ├── views/    # Home screen
│   │       └── widgets/  # Home-specific widgets
│   ├── measurement/
│   │   └── presentation/
│   │       ├── cubit/    # Measurement state management
│   │       ├── views/    # Measurement input screen
│   │       └── widgets/  # Custom rulers and measurement widgets
│   └── result/
│       └── presentation/
│           ├── views/    # Result display screen
│           └── widgets/  # Result-specific widgets
└── main.dart
```

## Tech Stack

- **Framework**: Flutter (Dart ^3.9.2)
- **State Management**: flutter_bloc ^9.1.1
- **Custom Widgets**: flutter_ruler_picker ^1.0.6
- **Device Preview**: device_preview ^1.3.1
- **Utility**: equatable ^2.0.7

## Getting Started

### Prerequisites

- Flutter SDK (3.9.2 or higher)
- Dart SDK (^3.9.2)
- Android Studio / Xcode (for mobile deployment)
- Visual Studio (for Windows deployment)

### Installation

1. **Clone the repository**
   ```bash
   git clone <repository-url>
   cd bmi_calculator
   ```

2. **Install dependencies**
   ```bash
   flutter pub get
   ```

3. **Run the app**
   ```bash
   flutter run
   ```

### Building for Different Platforms

**Android:**
```bash
flutter build apk
# or for app bundle
flutter build appbundle
```

**iOS:**
```bash
flutter build ios
```

**Web:**
```bash
flutter build web
```

**Windows:**
```bash
flutter build windows
```

**Linux:**
```bash
flutter build linux
```

**macOS:**
```bash
flutter build macos
```

## Project Structure

### Core Components

- **Custom Widgets**: Reusable UI components like buttons and headers
- **App Colors**: Centralized color management
- **App Styles**: Consistent text styling across the app

### Features

1. **Home Feature**
   - Gender selection (Male/Female)
   - Navigation to measurement screen
   - State management using Cubit

2. **Measurement Feature**
   - Interactive height ruler (cm)
   - Interactive weight ruler (kg)
   - Real-time value updates
   - State management for measurements

3. **Result Feature**
   - BMI calculation display
   - Health category indication
   - Visual feedback for BMI ranges

## Dependencies

```yaml
dependencies:
  flutter_bloc: ^9.1.1          # State management
  flutter_ruler_picker: ^1.0.6  # Custom ruler widgets
  device_preview: ^1.3.1        # Multi-device preview
  equatable: ^2.0.7             # Value equality
  cupertino_icons: ^1.0.8       # iOS style icons
```

## Assets

The app uses custom fonts (Roboto family) and images stored in:
- `assets/fonts/` - Custom font files
- `assets/images/` - App images and icons

## State Management

This app uses **BLoC pattern** (Business Logic Component) for state management:

- `GenderCubit` - Manages gender selection state
- `MeasurementCubit` - Manages height and weight values

## Configuration

### Android
- Minimum SDK: 21 (Android 5.0)
- Target SDK: Latest
- Build system: Gradle with Kotlin DSL

### iOS
- Minimum iOS version: 12.0
- Platform: iOS devices and simulator

## Development

### Running in Debug Mode

The app includes Device Preview in debug mode for testing on multiple device sizes:

```dart
DevicePreview(
  enabled: !kReleaseMode,
  builder: (context) => const BMIAPP()
)
```

### Code Style

This project follows Flutter's recommended linting rules configured in `analysis_options.yaml`.

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

1. Fork the project
2. Create your feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## License

This project is licensed under the MIT License - see the LICENSE file for details.

## Contact

For questions or feedback, please open an issue in the repository.

## Acknowledgments

- Flutter team for the amazing framework
- flutter_bloc for state management
- flutter_ruler_picker for the custom ruler widgets

---

**Made with ❤️ using Flutter**
