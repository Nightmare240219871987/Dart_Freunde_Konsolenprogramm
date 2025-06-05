class Vehicle {
  String? _vehicleName;
  int? _speed;

  Vehicle(String? vehicleName , int? speed) {
    _vehicleName = vehicleName;
    _speed = speed;
  }

  String? getVehicleName(){
    return this._vehicleName;
  }

  void setVehicleName(String? vehicleName){
    this._vehicleName = vehicleName;
  }

  int? getSpeed(){
    return this._speed;
  }

  void setSpeed(int? speed){
    this._speed = speed;
  }

}