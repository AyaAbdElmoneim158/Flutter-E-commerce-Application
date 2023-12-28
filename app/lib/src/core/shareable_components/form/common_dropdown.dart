import 'package:app/src/core/utils/app_colors.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:app/src/core/constance.dart';
import 'package:flutter/material.dart';
import 'package:app/src/core/theme/app_theme.dart';

class CommonDropdown extends StatefulWidget {
  const CommonDropdown({
    Key? key,
  }) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _CommonDropdownState createState() => _CommonDropdownState();
}

class _CommonDropdownState extends State<CommonDropdown> {
  String? selectedValue;
  @override
  Widget build(BuildContext context) {
    final List<String> genderItems = [
      'Male',
      'Female',
    ];

    return DropdownButtonFormField2<String>(
      isExpanded: true,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(vertical: 16),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        fillColor: AppTheme.getColor(ColorType.background, Constance.isLight),
        filled: true,
      ),
      hint: const Text(
        'Select Your gender',
        style: TextStyle(
          fontSize: 14,
          overflow: TextOverflow.ellipsis,
        ),
      ),
      items: genderItems
          .map(
            (item) => DropdownMenuItem<String>(
              value: item,
              child: Text(
                item,
                style: const TextStyle(
                  fontSize: 14,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
          )
          .toList(),
      validator: (value) {
        if (value == null) {
          return 'Please select gender.';
        }
        return null;
      },
      onChanged: (value) {},
      onSaved: (value) {
        selectedValue = value.toString();
      },
      buttonStyleData: const ButtonStyleData(
        padding: EdgeInsets.only(right: 8),
      ),
      iconStyleData: const IconStyleData(
        icon: Icon(
          Icons.arrow_drop_down,
          color: Colors.black45,
        ),
        iconSize: 24,
      ),
      dropdownStyleData: DropdownStyleData(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: AppTheme.getColor(
            ColorType.background,
            Constance.isLight,
          ),
        ),
      ),
      menuItemStyleData: const MenuItemStyleData(
        padding: EdgeInsets.symmetric(horizontal: 16),
      ),
    );
  }
}
