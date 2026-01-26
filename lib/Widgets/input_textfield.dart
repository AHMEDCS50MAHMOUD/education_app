import 'package:flutter/material.dart';

class InputTextfield extends StatelessWidget {
  final String hint;
  final TextEditingController controller;
  final int maxLines;
  final bool readOnly;
  final Widget? suffixIcon;
  final Function()? onTap;
  final FormFieldValidator<String>? validate;

  const InputTextfield({
    super.key,
    required this.hint,
    required this.controller,
    this.maxLines = 1,
    this.readOnly = false,
    this.suffixIcon,
    this.onTap,
    this.validate,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      maxLines: maxLines,
      readOnly: readOnly,
      validator: validate,
      onTapOutside: (value) {
        FocusScope.of(context).unfocus();
      },
      onTap: onTap,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        hintText: hint,
        suffixIcon: suffixIcon,
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 14,
        ),
        errorStyle: TextStyle(color: Colors.white, fontSize: 14),
      border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(25), // smooth curve
      borderSide: BorderSide.none,
    ),

    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(25),
      borderSide: BorderSide.none,
    ),

    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(25),
      borderSide: BorderSide.none,
    ),
      ),
    );
  }
}
