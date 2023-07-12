ILocationService getLocationService() => LocationService();

abstract class ILocationService {
  Future<dynamic> getCurrentLocation();
  Future<bool> getLocationPermission();
  Future<Stream> getLiveLocationStream();
}

class LocationService implements ILocationService {
  @override
  getCurrentLocation() {
    // TODO: implement getCurrentLocation
    throw UnimplementedError();
  }

  @override
  getLocationPermission() {
    // TODO: implement getLocationPermission
    throw UnimplementedError();
  }

  @override
  getLiveLocationStream() {
    // TODO: implement getLiveLocationStream
    throw UnimplementedError();
  }
}
