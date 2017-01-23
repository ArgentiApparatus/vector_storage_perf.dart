import 'dart:math';

import 'package:vector_storage_perf/measure.dart';

// Un-comment one of these
import 'package:vector_storage_perf/vector_components.dart';
//import 'package:vector_storage_perf/vector_float32List.dart';
//import 'package:vector_storage_perf/vector_float64List.dart';
//import 'package:vector_storage_perf/vector_list.dart';



main() {

  double t;
  Vector3 v0, v1, v2;

  // Warm up = mix new and cross
  measureFor(1000, () {
    v0 = new Vector3(0.0, 1.0, 2.0);
    v1 = new Vector3(3.0, 4.0, 5.0);
    v2 = new Vector3.zero();
    cross3(v0, v1, v2);
  });

  print('Warm up done');

  // Set up for new measurement
  v0 = v1 = v2 = null;

  // New measurement
  t = measureFor(2000, () {
    for(int i=0; i<pow(2, 8); i++) {
      v0 = new Vector3(0.0, 1.0, 2.0);
      v2 = new Vector3.zero();
    }
  });
  print('New vectors: $t');

  // set up for cross measurement
  v0 = new Vector3(0.0, 1.0, 2.0);
  v1 = new Vector3(3.0, 4.0, 5.0);
  v2 = new Vector3.zero();

  // Cross measurement
  t = measureFor(2000, () {
    for(int i=0; i<pow(2, 8); i++) cross3(v0, v1, v2);
  });
  print('Vector cross products: $t');

}




