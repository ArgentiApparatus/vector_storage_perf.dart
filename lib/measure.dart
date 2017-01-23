
double measureFor(int timeMinimum, Function f) {
  int iter = 0;
  Stopwatch watch = new Stopwatch();
  watch.start();
  int elapsed = 0;
  while (elapsed < timeMinimum) {
    f();
    elapsed = watch.elapsedMilliseconds;
    iter++;
  }
  return elapsed / iter;
}