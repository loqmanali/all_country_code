import 'package:flutter/material.dart';

import '../country_code_picker.dart';

class CustomCountryDropdown extends StatefulWidget {
  final List<Country> filteredCountries;
  final String? selectedCountry;
  final Function(String) onSelected;
  final bool showCountryName;
  final String hintText;

  const CustomCountryDropdown({
    super.key,
    required this.filteredCountries,
    required this.selectedCountry,
    required this.onSelected,
    this.showCountryName = false,
    this.hintText = 'Select Country',
  });

  @override
  State<CustomCountryDropdown> createState() => _CustomCountryDropdownState();
}

class _CustomCountryDropdownState extends State<CustomCountryDropdown> {
  List<Country> _displayedCountries = [];

  @override
  void initState() {
    super.initState();
    _displayedCountries = widget.filteredCountries;
  }

  String? get _selectedCountryLabel {
    if (widget.selectedCountry != null && _displayedCountries.isNotEmpty) {
      final country = _displayedCountries.firstWhere(
        (country) => country.isoCode == widget.selectedCountry!,
        orElse: () => _displayedCountries.isNotEmpty
            ? _displayedCountries[0]
            : _defaultCountry,
      );
      return '${country.flag} (${country.callingCode})';
    }
    return null;
  }

  String? get _validInitialSelection {
    if (widget.selectedCountry != null &&
        _displayedCountries.any((c) => c.isoCode == widget.selectedCountry)) {
      return widget.selectedCountry;
    }
    return '';
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 49,
      child: DropdownMenu<String>(
        requestFocusOnTap: true,
        enableFilter: false,
        enableSearch: true,
        initialSelection: _validInitialSelection,
        expandedInsets: EdgeInsets.zero,
        hintText: _selectedCountryLabel ?? widget.hintText,
        menuHeight: 300,
        onSelected: (value) {
          widget.onSelected(value ?? '');
        },
        dropdownMenuEntries: _displayedCountries.isNotEmpty
            ? _displayedCountries.map<DropdownMenuEntry<String>>((country) {
                return DropdownMenuEntry(
                  value: country.isoCode,
                  label: widget.showCountryName == false
                      ? '${country.flag} (${country.callingCode})'
                      : '${country.flag} ${country.name}',
                );
              }).toList()
            : [],
      ),
    );
  }
}

// Define _defaultCountry at the appropriate place in your code
final Country _defaultCountry = Country(
  isoCode: 'EG',
  name: 'Egypt',
  callingCode: '+20',
); // Example definition
