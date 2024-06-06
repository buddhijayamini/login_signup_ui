import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  final String hintText;
  final IconData icon;
  final bool obscureText;
  final String defaultText;

  CustomTextField({
    required this.hintText,
    required this.icon,
    this.obscureText = false,
    this.defaultText = '',
  });

  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  late TextEditingController _controller;
  bool _isFocused = false;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController(text: widget.defaultText);
    _isFocused = widget.defaultText.isNotEmpty || _controller.text.isNotEmpty; // Set _isFocused based on default text or if there's existing text
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: TextField(
        controller: _controller,
        obscureText: widget.obscureText,
        style: const TextStyle(color: Color.fromARGB(255, 8, 73, 184)),
        decoration: InputDecoration(
          hintText: widget.hintText,
          hintStyle: Theme.of(context).inputDecorationTheme.hintStyle,
          filled: true,
          fillColor: Colors.white,
          prefixIcon: Icon(
            widget.icon,
            color: _isFocused ? Colors.blue : Colors.blueGrey,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide(
              color: _isFocused ? Colors.blue : Colors.transparent,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide(
              color: _isFocused ? Colors.blue : Colors.transparent,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: const BorderSide(color: Colors.blue),
          ),
        ),
        onChanged: (value) {
          setState(() {
            _isFocused = value.isNotEmpty;
          });
        },
        onTap: () {
          setState(() {
            _isFocused = true;
          });
        },
        onEditingComplete: () {
          setState(() {
            _isFocused = false;
          });
        },
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
