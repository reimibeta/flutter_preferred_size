import 'package:flutter/material.dart';
import '../constants/search_box_size.dart';
import '../constants/search_box_color.dart';

// ignore: must_be_immutable
class SearchBox extends StatelessWidget {
  SearchBoxSize searchBoxSize;
  SearchBoxColor searchBoxColor;
  Function onTap;
  Widget leading;
  List<Widget> action;
  double elevation;

  SearchBox({
    Key key,
    this.onTap,
    this.searchBoxSize,
    this.searchBoxColor,
    this.action,
    this.leading,
    this.elevation
  }):super(key:key);

  static Color _fillColor = Colors.grey.shade200;

  @override
  Widget build(BuildContext context) {

    if(this.searchBoxSize == null)
      this.searchBoxSize = SearchBoxSize();

    if(this.searchBoxColor == null)
      this.searchBoxColor = SearchBoxColor();

    return AppBar(
      automaticallyImplyLeading: false,
      titleSpacing: 0,
      elevation: this.elevation == null ? 0 : this.elevation,
      backgroundColor: Colors.white,
      leading: this.leading,
      title: Container(
        height: this.searchBoxSize.height,
        color: Colors.white,
        padding: EdgeInsets.all(5),
        width: MediaQuery.of(context).size.width,
        child: InkWell(
          child: Container(
            color: _fillColor,
            child: Center(
              child: Text(
                  "Search",
                  style: TextStyle(
                  color: Colors.grey.shade800,
                  fontSize: this.searchBoxSize.input
                ),
              ),
            ),
          ),
          onTap: (){
            if(this.onTap!=null)
              this.onTap();
          },
        ),
      ),
      actions: this.action == null ? <Widget>[] : this.action,
    );
  }
}
