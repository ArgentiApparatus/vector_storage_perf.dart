import 'dart:typed_data';

/// 3D vector.
class Vector3 {

  // Component storage.
  final Float32List _storage;

  Vector3(double x, double y, double z): _storage = new Float32List.fromList([x, y, z]);
  Vector3.zero(): _storage = new Float32List(3);
}


/// Set [into] to the cross product of [other] and [another], return into.
Vector3 cross3(Vector3 other, Vector3 another, Vector3 into) {
  final ax = other._storage[0];
  final ay = other._storage[1];
  final az = other._storage[2];
  final bx = another._storage[0];
  final by = another._storage[1];
  final bz = another._storage[2];
  into._storage[0] = ay * bz - az * by;
  into._storage[1] = az * bx - ax * bz;
  into._storage[2] = ax * by - ay * bx;
  return into;
}






