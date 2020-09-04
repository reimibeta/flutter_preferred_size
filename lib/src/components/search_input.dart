import 'package:flutter/material.dart';
import '../constants/search_box_size.dart';
import '../constants/search_box_color.dart';

// ignore: must_be_immutable
class SearchInput extends StatelessWidget {
  SearchBoxSize searchBoxSize;
  SearchBoxColor searchBoxColor;
  Widget leading;
  List<Widget> action;
  //
  double elevation;
  SearchInput({
    Key key,
    this.searchBoxSize,
    this.searchBoxColor,
    this.action,
    this.leading,
    //
    this.elevation
  }):super(key:key);

  static final Color _fillColor = Colors.grey.shade200;

  @override
  Widget build(BuildContext context) {

    if(this.searchBoxSize == null)
      this.searchBoxSize = SearchBoxSize();

    if(this.searchBoxColor == null)
      this.searchBoxColor = SearchBoxColor();

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(this.searchBoxSize.height),
        child: AppBar(
          automaticallyImplyLeading: false,
          elevation: this.elevation ?? 0.0,
          titleSpacing: 0,
          backgroundColor: Colors.white,
          leading: this.leading,
          title: Container(
            height: this.searchBoxSize.height,
            color: Colors.white,
            padding: EdgeInsets.all(5),
            width: MediaQuery.of(context).size.width,
            child: TextField(
              textAlign: TextAlign.left,
              decoration: InputDecoration(
                filled: true,
                fillColor: _fillColor,
                hintText: "Search",
                border: InputBorder.none,
                contentPadding: EdgeInsets.fromLTRB(10, 0, 10, 12),
                hintStyle: TextStyle(
                  color: Colors.grey[800],
                ),
              ),
              controller: null,
              onSubmitted: (_) => null,
              onEditingComplete: null,
              autofocus: false,
              style: TextStyle(
                fontSize: this.searchBoxSize.input,
                color: this.searchBoxColor.text,
              ),
            ),
          ),
          actions: this.action,
        ),
      ),
    );
  }
}
