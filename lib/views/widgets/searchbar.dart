import 'package:flutter/material.dart';

class SearchBar extends StatefulWidget {
  const SearchBar(
      {super.key,
      required this.label,
      required this.onSubmit,
      required this.controller});

  final String label;
  final void Function(String) onSubmit;
  final TextEditingController controller;

  @override
  State<SearchBar> createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(children: [
        TextFormField(
          textInputAction: TextInputAction.search,
          style: Theme.of(context).textTheme.bodyText1,
          onFieldSubmitted: widget.onSubmit,
          controller: widget.controller,
          decoration: InputDecoration(
              labelText: widget.label,
              border: const OutlineInputBorder(),
              focusColor: const Color(0xFFA09EA2),
              labelStyle: const TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: 14,
              ),
              prefixIcon: const Icon(
                Icons.search,
              )),
        )
      ]),
    );
  }
}
