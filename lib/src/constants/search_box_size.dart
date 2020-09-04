
class SearchBoxSize {
  double _height = 45;
  double _leading = 35;
  double _action = 35;

  get height => _height;
  get leading => _leading;
  get action => _action;

  set height(double height) => _height = height;
  set leading(double leading) => _leading = leading;
  set action(double action) => _action = action;

  double _input = 12;
  get input => _input;
  set input(double input) => _input = input;

  double _icon = 18;
  get icon => _icon;
  set icon(double icon) => _icon = icon;

  SearchBoxSize({
    double height,
    double leading,
    double action,
    double input,
    double icon
  }){
    this._height =  height == null ? this._height : height;
    this._leading = leading == null ? this._leading : leading;
    this._action = action == null ? this._action : action;
    this._input = input == null ? this._input : input;
    this._icon = icon == null ? this._icon : icon;
  }
}