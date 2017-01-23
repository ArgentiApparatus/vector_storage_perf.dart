/// 3D vector.
class Vector3 {

  // Component storage.
  double x, y, z;

  Vector3(this.x, this.y, this.z);
  Vector3.zero(): x=0.0, y=0.0, z=0.0;
}


/// Set [into] to the cross product of [other] and [another], return into.
Vector3 cross3(Vector3 other, Vector3 another, Vector3 into) {
  into.x = other.y * another.z - other.z * another.y;
  into.y = other.z * another.x - other.x * another.z;
  into.z = other.x * another.y - other.y * another.x;
  return into;
}