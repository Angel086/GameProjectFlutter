import 'package:flutter/material.dart';

class SingleSelection extends StatefulWidget {
  List<String> sortFilter;

  SingleSelection(this.sortFilter);

  @override
  _SingleSelection createState() => _SingleSelection();
}

class _SingleSelection extends State<SingleSelection> {
  late String selectedValue;

  @override
  void initState() {
    super.initState();

    selectedValue = widget.sortFilter.first;
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (ctx, index) {
        return GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap: () {
            selectedValue = widget.sortFilter[index];
            setState(() {});
          },
          child: Container(
            color: selectedValue == widget.sortFilter[index]
                ? Colors.green[100]
                : null,
            child: Row(
              children: <Widget>[
                Radio(
                    value: widget.sortFilter[index],
                    groupValue: selectedValue,
                    onChanged: (s) {
                    }),
                Text(widget.sortFilter[index])
              ],
            ),
          ),
        );
      },
      itemCount: widget.sortFilter.length,
    );
  }
}