class Friend{
  String? _name;
  int? _distance;

  Friend(String name, int distance){
    _name = name;
    _distance = distance;
  }

  String? getName(){
    return this._name;
  }

  void setName(String? name){
    this._name = name;
  }

  int? getDistance(){
    return this._distance;
  }

  void setDistance(int? distance){
    this._distance = distance;
  }
}

