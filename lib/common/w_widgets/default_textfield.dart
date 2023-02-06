import 'package:flutter/material.dart';

class DefaultTextField extends StatefulWidget {
  final TextEditingController controller;
  final String hintText;
  final ValueChanged<String> onChanged;

  const DefaultTextField({
    required this.onChanged,
    required this.controller,
    Key? key,
    this.hintText = '',
  }) : super(key: key);

  @override
  State<DefaultTextField> createState() => _DefaultTextFieldState();
}

class _DefaultTextFieldState extends State<DefaultTextField> {
  // bool obScure = true;
  bool passwordVisible = true;

  @override
  Widget build(BuildContext context) => TextFormField(
        controller: widget.controller,
        obscureText: passwordVisible,
        textInputAction: TextInputAction.next,
        keyboardType: TextInputType.visiblePassword,
        cursorColor: Colors.black,
        cursorWidth: 1,
        obscuringCharacter: '⁎',
        onChanged: (value) {
          setState(() {});
        },
        decoration: InputDecoration(
          filled: true,
          hoverColor: const Color(0xFFFAFAFB),
          hintStyle: Theme.of(context)
              .textTheme
              .headline2!
              .copyWith(fontSize: 14, fontWeight: FontWeight.w600, color: Colors.grey),
          labelStyle: Theme.of(context)
              .textTheme
              .headline1!
              .copyWith(fontSize: 14, fontWeight: FontWeight.w600),
          hintText: widget.hintText,
          contentPadding: const EdgeInsets.only(top: 13, bottom: 13, left: 16),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(color: Color(0xFFF1F1F5))),
          suffixIcon: IconButton(
            color: Colors.grey,
            splashRadius: 1,
            focusColor: Colors.grey,
            icon: Icon(passwordVisible
                ? Icons.visibility_outlined
                : Icons.visibility_off_outlined),
            onPressed: () {
              setState(() {
                passwordVisible = !passwordVisible;
              });
            },
          ),
          suffixIconColor: Colors.grey,
          focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(color: Colors.grey)),
          errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(color: Colors.grey)),
          focusColor: Theme.of(context).appBarTheme.backgroundColor,
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(color: Colors.grey)),
          disabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(color: Color(0xFFF1F1F5))),
        ),
      );
}
