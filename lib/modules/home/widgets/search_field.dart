import 'package:flutter/material.dart';
import 'package:medical_apps/widgets/custom_textfield.dart';

class SearchField extends StatelessWidget {
  const SearchField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: CustomTextField(
        hint: 'Search',
        borderRadius: 100,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(100),
          borderSide: BorderSide.none,
        ),
        suffixIcon: const Icon(Icons.search),
      ),
    );
  }
}
