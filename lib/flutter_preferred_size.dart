library flutter_preferred_size;

import 'package:flutter/material.dart';

import 'src/components/search_box.dart';
import 'src/components/search_input.dart';
import 'src/constants/search_box_color.dart';
import 'src/constants/search_box_size.dart';
// widget
export 'src/components/search_box.dart' show SearchBox;
export 'src/components/search_input.dart' show SearchInput;
// constant
export 'src/constants/search_box_color.dart' show SearchBoxColor;
export 'src/constants/search_box_size.dart' show SearchBoxSize;

// ignore: must_be_immutable
class FlutterPreferredSize extends StatelessWidget {

  final SearchBox searchBox;
  final SearchInput searchInput;
  final Widget body;
  Color background;

  FlutterPreferredSize({
    Key key,
    this.searchBox,
    this.searchInput,
    this.body,
    this.background
  }):super(key: key);

  // ignore: missing_return
  Widget appBar(BuildContext context){
    if(this.searchBox != null)
      return this.searchBox;

    if(this.searchInput != null)
      return this.searchInput;
  }

  @override
  Widget build(BuildContext context) {
    var searchBoxSize = SearchBoxSize();
    var background = this.background == null ? SearchBoxColor().background : this.background;
    return Scaffold(
      backgroundColor: background,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(
            searchBoxSize.height
        ),
        child: appBar(context),
      ),
      body: this.body,
    );
  }
}
