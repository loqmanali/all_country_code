# Country Code Picker

A Flutter package that provides a customizable country code picker with flags and search functionality. Easily integrate a user-friendly dropdown to select countries, complete with flag representations and international calling codes.

## Features

- **Flag Representation**: Displays country flags using emojis or generated via Unicode for web and native platforms.
- **Search Functionality**: Allows users to search for countries within the dropdown.
- **Customizable Display**: Choose to display only flags with calling codes or include country names.
- **Responsive Design**: Optimized for both mobile and web platforms.
- **Extensive Country List**: Includes a comprehensive list of countries with ISO codes and calling codes.

## Installation

Add `country_code_picker` to your project's `pubspec.yaml` file:

```yaml
dependencies:
  country_code_picker:
    git:
      url: https://github.com/loqmanali/country_code_picker.git
      ref: main
```

****

## Or, if published on `pub.dev`, add

``` yaml
dependencies:
  country_code_picker: ^1.0.0
```

## Then, run `flutter pub get` to install the package

## Usage

Import the package in your Dart file:

``` dart
import 'package:country_code_picker/country_code_picker.dart';
```

## Use the `CustomCountryDropdown` widget within your widget tree

``` dart
import 'package:flutter/material.dart';
import 'package:country_code_picker/country_code_picker.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Country Code Picker Example',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Country Code Picker'),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: CustomCountryDropdown(
              filteredCountries: countries, // Use your filtered logic if any
              selectedCountry: 'US', // ISO code of the initially selected country
              onSelected: (isoCode) {
                // Handle country selection
                print('Selected Country ISO Code: $isoCode');
              },
              showCountryName: true, // Set to false to show only flag and calling code
              hintText: 'Select your country',
            ),
          ),
        ),
      ),
    );
  }
}
```

## Example

An example app is provided in the `example` directory. To run it:

1. Navigate to the `example` directory:

``` bash
cd country_code_picker/example
```

2. Run the app:

``` bash
flutter run
```

This will launch the example application demonstrating the usage of the `country_code_picker` package.

## API Reference

### `Country` Class

Represents a country with its name, ISO code, and calling code.

- **Properties**:
  - `name` (`String`): The name of the country.
  - `isoCode` (`String`): The ISO 3166-1 alpha-2 code of the country.
  - `callingCode` (`String`): The international calling code.
- **Getters**:
  - `flag` (`String`): Returns the flag representation based on the platform.
  - `webFlag` (`String`): Returns the flag emoji for web platforms.
  - `nativeFlag` (`String`): Generates the flag emoji for native platforms.
- **Static Methods**:
  - `fromCountryCode(String countryCode) -> String?`: Returns the flag emoji for the given country code or `null` if not found.

### `CustomCountryDropdown` Widget

A customizable dropdown widget for selecting countries.

- **Properties**:
  - `filteredCountries` (`List<Country>`): The list of countries to display.
  - `selectedCountry` (`String?`): The ISO code of the initially selected country.
  - `onSelected` (`Function(String)`): Callback when a country is selected.
  - `showCountryName` (`bool`): Whether to display the country name alongside the flag and calling code. Defaults to `false`.
  - `hintText` (`String`): The hint text to display when no country is selected. Defaults to `'Select Country'`.

## Contributing

Contributions are welcome! Please open an issue or submit a pull request for any improvements or bug fixes.

## License

This project is licensed under the MIT License. See the [LICENSE](https://www.notion.so/LICENSE) file for details.
