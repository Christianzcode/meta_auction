import 'package:meta_auction/Models/filter.dart';

class ChosenList{
  List<Filter> _c;

  List<Filter> get c => _c;

  set c(List<Filter> value) {
    _c = value;
  }

  void listAdd(Filter f){
    c.add(f);
  }

  void listRemove(Filter f){
    c.remove(f);
  }


}