# Flutter Localization with Provider

This project demonstrates the implementation of localization in a Flutter application using the `provider` package for state management.

## Getting Started

To get started with this project, follow the steps below:

1. **Clone the Repository:**
   ```bash
   git clone https://github.com/momin-mostafa/flutter_localization_provider.git
   ```

2. **Navigate to the Project Directory:**
   ```bash
   cd flutter_localization_provider
   ```

3. **Install Dependencies:**
   ```bash
   flutter pub get
   ```

4. **Run the Application:**
   ```bash
   flutter run
   ```

## Project Structure

The project is organized as follows:

```
flutter_localization_provider/
├── lib/
│   ├── main.dart
│   ├── l10n/
│   │   ├── app_en.arb
│   │   ├── app_es.arb
│   │   └── app_fr.arb
│   ├── models/
│   │   └── locale_provider.dart
│   └── screens/
│       ├── home_page.dart
│       └── settings_page.dart
├── test/
│   └── widget_test.dart
├── pubspec.yaml
└── README.md
```

- **lib/**: Contains the main application code.
    - **l10n/**: Directory containing localization files in ARB format for different languages (e.g., English, Spanish, French).
    - **models/**: Contains the `LocaleProvider` class for managing the app's locale state using `provider`.
    - **screens/**: Core application pages such as home and settings.
- **test/**: Contains the widget tests for the application.
- **pubspec.yaml**: Defines the dependencies and assets for the project.
- **README.md**: Provides an overview and instructions for the project.

## Localization with Provider

This project utilizes the `provider` package to manage localization state across the app.

### Steps to Add Localization

1. **Create Localization Files:**
    - Add translations in `lib/l10n/` as ARB files (e.g., `app_en.arb`, `app_es.arb`).

2. **Set Up Provider:**
    - Define a `LocaleProvider` class inside `models/locale_provider.dart`:
      ```dart
      import 'package:flutter/material.dart';
 
      class LocaleProvider extends ChangeNotifier {
        Locale _locale = Locale('en');
 
        Locale get locale => _locale;
 
        void setLocale(Locale locale) {
          _locale = locale;
          notifyListeners();
        }
      }
      ```

3. **Wrap App with Provider:**
    - Update `main.dart` to include the `ChangeNotifierProvider`:
      ```dart
      void main() {
        runApp(
          ChangeNotifierProvider(
            create: (context) => LocaleProvider(),
            child: MyApp(),
          ),
        );
      }
      ```

4. **Access Provider in Widgets:**
    - Use `Provider.of<LocaleProvider>(context)` to access and change the locale.

### Switching Languages

The application allows users to switch between supported languages through the settings page. The selected language is managed using the `provider` package and persists across app restarts.

## References

- `provider` package: [pub.dev](https://pub.dev/packages/provider)
- Flutter Localization: [docs.flutter.dev](https://docs.flutter.dev/development/accessibility-and-localization/internationalization)

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

---

For more information on Flutter localization, refer to the official Flutter documentation.

