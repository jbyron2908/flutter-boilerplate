class CounterRepository {
  int increment(int count) {
    return count + 1;
  }

  Future<int> incrementWithDelay(int count) async {
    await Future.delayed(
      const Duration(seconds: 2),
    );

    return count + 1;
  }

  int decrement(int count) {
    return count - 1;
  }
}
