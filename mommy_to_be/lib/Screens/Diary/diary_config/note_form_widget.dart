import 'package:flutter/material.dart';

class NoteFormWidget extends StatelessWidget {
  final bool? isImportant;
  final int? number;
  final String? title;
  final String? description;
  final ValueChanged<bool> onChangedImportant;
  final ValueChanged<int> onChangedNumber;
  final ValueChanged<String> onChangedTitle;
  final ValueChanged<String> onChangedDescription;

  const NoteFormWidget({
    Key? key,
    this.isImportant = false,
    this.number = 0,
    this.title = '',
    this.description = '',
    required this.onChangedImportant,
    required this.onChangedNumber,
    required this.onChangedTitle,
    required this.onChangedDescription,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: [
                  // Switch(
                  //   value: isImportant ?? false,
                  //   onChanged: onChangedImportant,
                  // ),
                  // Expanded(
                  //   child: Slider(
                  //     value: (number ?? 0).toDouble(),
                  //     min: 0,
                  //     max: 5,
                  //     divisions: 5,
                  //     onChanged: (number) => onChangedNumber(number.toInt()),
                  //   ),
                  // )
                ],
              ),
              buildTitle(),
              SizedBox(
                height: 8,
              ),
              buildDescription(),
              SizedBox(height: 16),
            ],
          ),
        ),
      );

  Widget buildTitle() => TextFormField(
        maxLines: 1,
        initialValue: title,
        style: TextStyle(
          color: Colors.black,
          fontFamily: 'Allura',
          fontSize: 34,
        ),
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: 'Title',
          hintStyle: TextStyle(
            color: Colors.black45,
          ),
        ),
        validator: (title) =>
            title != null && title.isEmpty ? 'The title cannot be empty' : null,
        onChanged: onChangedTitle,
      );

  Widget buildDescription() => TextFormField(
        maxLines: 5,
        initialValue: description,
        style: const TextStyle(
          color: Colors.deepPurpleAccent,
          fontSize: 28,
          fontFamily: 'Pacifico',
        ),
        decoration: const InputDecoration(
          border: InputBorder.none,
          hintText: 'Pour your heart Out...',
          hintStyle: TextStyle(
            color: Colors.deepPurpleAccent,
            fontFamily: 'Allura',
            fontSize: 30,
          ),
        ),
        validator: (title) => title != null && title.isEmpty
            ? 'The description cannot be empty'
            : null,
        onChanged: onChangedDescription,
      );
}
