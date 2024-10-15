// lib/src/country.dart

import 'package:flutter/foundation.dart' show kIsWeb;

import '../country_code_picker.dart';

class Country {
  final String name;
  final String isoCode;
  final String callingCode;

  Country({
    required this.name,
    required this.isoCode,
    required this.callingCode,
  });

  /// Method to get the flag representation
  String get flag {
    return kIsWeb ? webFlag : nativeFlag;
  }

  /// Fallback method for web platforms
  String get webFlag {
    return FlagGenerator.generateFlagForWeb(isoCode);
  }

  /// Method to generate the flag emoji (for non-web platforms)
  String get nativeFlag {
    return FlagGenerator.generateFlag(isoCode);
  }
}

/// Complete list of countries
List<Country> countries = [
  Country(name: 'Afghanistan', isoCode: 'AF', callingCode: '+93'),
  Country(name: 'Albania', isoCode: 'AL', callingCode: '+355'),
  Country(name: 'Algeria', isoCode: 'DZ', callingCode: '+213'),
  Country(name: 'Andorra', isoCode: 'AD', callingCode: '+376'),
  Country(name: 'Angola', isoCode: 'AO', callingCode: '+244'),
  Country(name: 'Antigua and Barbuda', isoCode: 'AG', callingCode: '+1-268'),
  Country(name: 'Argentina', isoCode: 'AR', callingCode: '+54'),
  Country(name: 'Armenia', isoCode: 'AM', callingCode: '+374'),
  Country(name: 'Australia', isoCode: 'AU', callingCode: '+61'),
  Country(name: 'Austria', isoCode: 'AT', callingCode: '+43'),
  Country(name: 'Azerbaijan', isoCode: 'AZ', callingCode: '+994'),
  Country(name: 'Bahamas', isoCode: 'BS', callingCode: '+1-242'),
  Country(name: 'Bahrain', isoCode: 'BH', callingCode: '+973'),
  Country(name: 'Bangladesh', isoCode: 'BD', callingCode: '+880'),
  Country(name: 'Barbados', isoCode: 'BB', callingCode: '+1-246'),
  Country(name: 'Belarus', isoCode: 'BY', callingCode: '+375'),
  Country(name: 'Belgium', isoCode: 'BE', callingCode: '+32'),
  Country(name: 'Belize', isoCode: 'BZ', callingCode: '+501'),
  Country(name: 'Benin', isoCode: 'BJ', callingCode: '+229'),
  Country(name: 'Bhutan', isoCode: 'BT', callingCode: '+975'),
  Country(name: 'Bolivia', isoCode: 'BO', callingCode: '+591'),
  Country(name: 'Bosnia and Herzegovina', isoCode: 'BA', callingCode: '+387'),
  Country(name: 'Botswana', isoCode: 'BW', callingCode: '+267'),
  Country(name: 'Brazil', isoCode: 'BR', callingCode: '+55'),
  Country(name: 'Brunei', isoCode: 'BN', callingCode: '+673'),
  Country(name: 'Bulgaria', isoCode: 'BG', callingCode: '+359'),
  Country(name: 'Burkina Faso', isoCode: 'BF', callingCode: '+226'),
  Country(name: 'Burundi', isoCode: 'BI', callingCode: '+257'),
  Country(name: 'Cabo Verde', isoCode: 'CV', callingCode: '+238'),
  Country(name: 'Cambodia', isoCode: 'KH', callingCode: '+855'),
  Country(name: 'Cameroon', isoCode: 'CM', callingCode: '+237'),
  Country(name: 'Canada', isoCode: '🇨🇦', callingCode: '+1'),
  Country(name: 'Central African Republic', isoCode: 'CF', callingCode: '+236'),
  Country(name: 'Chad', isoCode: 'TD', callingCode: '+235'),
  Country(name: 'Chile', isoCode: 'CL', callingCode: '+56'),
  Country(name: 'China', isoCode: 'CN', callingCode: '+86'),
  Country(name: 'Colombia', isoCode: 'CO', callingCode: '+57'),
  Country(name: 'Comoros', isoCode: 'KM', callingCode: '+269'),
  Country(
      name: 'Congo, Democratic Republic', isoCode: 'CD', callingCode: '+243'),
  Country(name: 'Congo, Republic of the', isoCode: 'CG', callingCode: '+242'),
  Country(name: 'Costa Rica', isoCode: 'CR', callingCode: '+506'),
  Country(name: 'Croatia', isoCode: 'HR', callingCode: '+385'),
  Country(name: 'Cuba', isoCode: 'CU', callingCode: '+53'),
  Country(name: 'Cyprus', isoCode: 'CY', callingCode: '+357'),
  Country(name: 'Czech Republic', isoCode: 'CZ', callingCode: '+420'),
  Country(name: 'Denmark', isoCode: 'DK', callingCode: '+45'),
  Country(name: 'Djibouti', isoCode: 'DJ', callingCode: '+253'),
  Country(name: 'Dominica', isoCode: 'DM', callingCode: '+1-767'),
  Country(name: 'Dominican Republic', isoCode: 'DO', callingCode: '+1-809'),
  Country(name: 'Ecuador', isoCode: 'EC', callingCode: '+593'),
  Country(name: 'Egypt', isoCode: 'EG', callingCode: '+20'),
  Country(name: 'El Salvador', isoCode: 'SV', callingCode: '+503'),
  Country(name: 'Equatorial Guinea', isoCode: 'GQ', callingCode: '+240'),
  Country(name: 'Eritrea', isoCode: 'ER', callingCode: '+291'),
  Country(name: 'Estonia', isoCode: 'EE', callingCode: '+372'),
  Country(name: 'Eswatini', isoCode: 'SZ', callingCode: '+268'),
  Country(name: 'Ethiopia', isoCode: 'ET', callingCode: '+251'),
  Country(name: 'Fiji', isoCode: 'FJ', callingCode: '+679'),
  Country(name: 'Finland', isoCode: 'FI', callingCode: '+358'),
  Country(name: 'France', isoCode: 'FR', callingCode: '+33'),
  Country(name: 'Gabon', isoCode: 'GA', callingCode: '+241'),
  Country(name: 'Gambia', isoCode: 'GM', callingCode: '+220'),
  Country(name: 'Georgia', isoCode: 'GE', callingCode: '+995'),
  Country(name: 'Germany', isoCode: 'DE', callingCode: '+49'),
  Country(name: 'Ghana', isoCode: 'GH', callingCode: '+233'),
  Country(name: 'Greece', isoCode: 'GR', callingCode: '+30'),
  Country(name: 'Grenada', isoCode: 'GD', callingCode: '+1-473'),
  Country(name: 'Guatemala', isoCode: 'GT', callingCode: '+502'),
  Country(name: 'Guinea', isoCode: 'GN', callingCode: '+224'),
  Country(name: 'Guinea-Bissau', isoCode: 'GW', callingCode: '+245'),
  Country(name: 'Guyana', isoCode: 'GY', callingCode: '+592'),
  Country(name: 'Haiti', isoCode: 'HT', callingCode: '+509'),
  Country(name: 'Honduras', isoCode: 'HN', callingCode: '+504'),
  Country(name: 'Hungary', isoCode: 'HU', callingCode: '+36'),
  Country(name: 'Iceland', isoCode: 'IS', callingCode: '+354'),
  Country(name: 'India', isoCode: 'IN', callingCode: '+91'),
  Country(name: 'Indonesia', isoCode: 'ID', callingCode: '+62'),
  Country(name: 'Iran', isoCode: 'IR', callingCode: '+98'),
  Country(name: 'Iraq', isoCode: 'IQ', callingCode: '+964'),
  Country(name: 'Ireland', isoCode: 'IE', callingCode: '+353'),
  Country(name: 'Palestine', isoCode: 'PS', callingCode: '+970'),
  Country(name: 'Italy', isoCode: 'IT', callingCode: '+39'),
  Country(name: 'Jamaica', isoCode: 'JM', callingCode: '+1-876'),
  Country(name: 'Japan', isoCode: 'JP', callingCode: '+81'),
  Country(name: 'Jordan', isoCode: 'JO', callingCode: '+962'),
  Country(name: 'Kazakhstan', isoCode: 'KZ', callingCode: '+7'),
  Country(name: 'Kenya', isoCode: 'KE', callingCode: '+254'),
  Country(name: 'Kiribati', isoCode: 'KI', callingCode: '+686'),
  Country(name: 'Korea, North', isoCode: 'KP', callingCode: '+850'),
  Country(name: 'Korea, South', isoCode: 'KR', callingCode: '+82'),
  Country(name: 'Kuwait', isoCode: 'KW', callingCode: '+965'),
  Country(name: 'Kyrgyzstan', isoCode: 'KG', callingCode: '+996'),
  Country(name: 'Laos', isoCode: 'LA', callingCode: '+856'),
  Country(name: 'Latvia', isoCode: 'LV', callingCode: '+371'),
  Country(name: 'Lebanon', isoCode: 'LB', callingCode: '+961'),
  Country(name: 'Lesotho', isoCode: 'LS', callingCode: '+266'),
  Country(name: 'Liberia', isoCode: 'LR', callingCode: '+231'),
  Country(name: 'Libya', isoCode: 'LY', callingCode: '+218'),
  Country(name: 'Liechtenstein', isoCode: 'LI', callingCode: '+423'),
  Country(name: 'Lithuania', isoCode: 'LT', callingCode: '+370'),
  Country(name: 'Luxembourg', isoCode: 'LU', callingCode: '+352'),
  Country(name: 'Madagascar', isoCode: 'MG', callingCode: '+261'),
  Country(name: 'Malawi', isoCode: 'MW', callingCode: '+265'),
  Country(name: 'Malaysia', isoCode: 'MY', callingCode: '+60'),
  Country(name: 'Maldives', isoCode: 'MV', callingCode: '+960'),
  Country(name: 'Mali', isoCode: 'ML', callingCode: '+223'),
  Country(name: 'Malta', isoCode: 'MT', callingCode: '+356'),
  Country(name: 'Marshall Islands', isoCode: 'MH', callingCode: '+692'),
  Country(name: 'Mauritania', isoCode: 'MR', callingCode: '+222'),
  Country(name: 'Mauritius', isoCode: 'MU', callingCode: '+230'),
  Country(name: 'Mexico', isoCode: 'MX', callingCode: '+52'),
  Country(name: 'Micronesia', isoCode: 'FM', callingCode: '+691'),
  Country(name: 'Moldova', isoCode: 'MD', callingCode: '+373'),
  Country(name: 'Monaco', isoCode: 'MC', callingCode: '+377'),
  Country(name: 'Mongolia', isoCode: 'MN', callingCode: '+976'),
  Country(name: 'Montenegro', isoCode: 'ME', callingCode: '+382'),
  Country(name: 'Morocco', isoCode: 'MA', callingCode: '+212'),
  Country(name: 'Mozambique', isoCode: 'MZ', callingCode: '+258'),
  Country(name: 'Myanmar', isoCode: 'MM', callingCode: '+95'),
  Country(name: 'Namibia', isoCode: 'NA', callingCode: '+264'),
  Country(name: 'Nauru', isoCode: 'NR', callingCode: '+674'),
  Country(name: 'Nepal', isoCode: 'NP', callingCode: '+977'),
  Country(name: 'Netherlands', isoCode: 'NL', callingCode: '+31'),
  Country(name: 'New Zealand', isoCode: 'NZ', callingCode: '+64'),
  Country(name: 'Nicaragua', isoCode: 'NI', callingCode: '+505'),
  Country(name: 'Niger', isoCode: 'NE', callingCode: '+227'),
  Country(name: 'Nigeria', isoCode: 'NG', callingCode: '+234'),
  Country(name: 'North Macedonia', isoCode: 'MK', callingCode: '+389'),
  Country(name: 'Norway', isoCode: 'NO', callingCode: '+47'),
  Country(name: 'Oman', isoCode: 'OM', callingCode: '+968'),
  Country(name: 'Pakistan', isoCode: 'PK', callingCode: '+92'),
  Country(name: 'Palau', isoCode: 'PW', callingCode: '+680'),
  Country(name: 'Panama', isoCode: 'PA', callingCode: '+507'),
  Country(name: 'Papua New Guinea', isoCode: 'PG', callingCode: '+675'),
  Country(name: 'Paraguay', isoCode: 'PY', callingCode: '+595'),
  Country(name: 'Peru', isoCode: 'PE', callingCode: '+51'),
  Country(name: 'Philippines', isoCode: 'PH', callingCode: '+63'),
  Country(name: 'Poland', isoCode: 'PL', callingCode: '+48'),
  Country(name: 'Portugal', isoCode: 'PT', callingCode: '+351'),
  Country(name: 'Qatar', isoCode: 'QA', callingCode: '+974'),
  Country(name: 'Romania', isoCode: 'RO', callingCode: '+40'),
  Country(name: 'Russia', isoCode: 'RU', callingCode: '+7'),
  Country(name: 'Rwanda', isoCode: 'RW', callingCode: '+250'),
  Country(name: 'Saint Kitts and Nevis', isoCode: 'KN', callingCode: '+1-869'),
  Country(name: 'Saint Lucia', isoCode: 'LC', callingCode: '+1-758'),
  Country(
      name: 'Saint Vincent and the Grenadines',
      isoCode: 'VC',
      callingCode: '+1-784'),
  Country(name: 'Samoa', isoCode: 'WS', callingCode: '+685'),
  Country(name: 'San Marino', isoCode: 'SM', callingCode: '+378'),
  Country(name: 'Sao Tome and Principe', isoCode: 'ST', callingCode: '+239'),
  Country(name: 'Saudi Arabia', isoCode: 'SA', callingCode: '+966'),
  Country(name: 'Senegal', isoCode: 'SN', callingCode: '+221'),
  Country(name: 'Serbia', isoCode: 'RS', callingCode: '+381'),
  Country(name: 'Seychelles', isoCode: 'SC', callingCode: '+248'),
  Country(name: 'Sierra Leone', isoCode: 'SL', callingCode: '+232'),
  Country(name: 'Singapore', isoCode: 'SG', callingCode: '+65'),
  Country(name: 'Slovakia', isoCode: 'SK', callingCode: '+421'),
  Country(name: 'Slovenia', isoCode: 'SI', callingCode: '+386'),
  Country(name: 'Solomon Islands', isoCode: 'SB', callingCode: '+677'),
  Country(name: 'Somalia', isoCode: 'SO', callingCode: '+252'),
  Country(name: 'South Africa', isoCode: 'ZA', callingCode: '+27'),
  Country(name: 'Spain', isoCode: 'ES', callingCode: '+34'),
  Country(name: 'Sri Lanka', isoCode: 'LK', callingCode: '+94'),
  Country(name: 'Sudan', isoCode: 'SD', callingCode: '+249'),
  Country(name: 'Suriname', isoCode: 'SR', callingCode: '+597'),
  Country(name: 'Sweden', isoCode: 'SE', callingCode: '+46'),
  Country(name: 'Switzerland', isoCode: 'CH', callingCode: '+41'),
  Country(name: 'Syria', isoCode: 'SY', callingCode: '+963'),
  Country(name: 'Taiwan', isoCode: 'TW', callingCode: '+886'),
  Country(name: 'Tajikistan', isoCode: 'TJ', callingCode: '+992'),
  Country(name: 'Tanzania', isoCode: 'TZ', callingCode: '+255'),
  Country(name: 'Thailand', isoCode: 'TH', callingCode: '+66'),
  Country(name: 'Timor-Leste', isoCode: 'TL', callingCode: '+670'),
  Country(name: 'Togo', isoCode: 'TG', callingCode: '+228'),
  Country(name: 'Tonga', isoCode: 'TO', callingCode: '+676'),
  Country(name: 'Trinidad and Tobago', isoCode: 'TT', callingCode: '+1-868'),
  Country(name: 'Tunisia', isoCode: 'TN', callingCode: '+216'),
  Country(name: 'Turkey', isoCode: 'TR', callingCode: '+90'),
  Country(name: 'Turkmenistan', isoCode: 'TM', callingCode: '+993'),
  Country(name: 'Tuvalu', isoCode: 'TV', callingCode: '+688'),
  Country(name: 'Uganda', isoCode: 'UG', callingCode: '+256'),
  Country(name: 'Ukraine', isoCode: 'UA', callingCode: '+380'),
  Country(name: 'United Arab Emirates', isoCode: 'AE', callingCode: '+971'),
  Country(name: 'United Kingdom', isoCode: 'GB', callingCode: '+44'),
  Country(name: 'United States', isoCode: 'US', callingCode: '+1'),
  Country(name: 'Uruguay', isoCode: 'UY', callingCode: '+598'),
  Country(name: 'Uzbekistan', isoCode: 'UZ', callingCode: '+998'),
  Country(name: 'Vanuatu', isoCode: 'VU', callingCode: '+678'),
  Country(name: 'Vatican City', isoCode: 'VA', callingCode: '+379'),
  Country(name: 'Venezuela', isoCode: 'VE', callingCode: '+58'),
  Country(name: 'Vietnam', isoCode: 'VN', callingCode: '+84'),
  Country(name: 'Yemen', isoCode: 'YE', callingCode: '+967'),
  Country(name: 'Zambia', isoCode: 'ZM', callingCode: '+260'),
  Country(name: 'Zimbabwe', isoCode: 'ZW', callingCode: '+263'),
];
