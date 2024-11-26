import 'dart:developer';

class MultiFutureWaitTips {
  final future1 = Future.delayed(
    const Duration(seconds: 1),
    () => 'Future 1 Callback',
  );

  final future2 = Future.delayed(
    const Duration(seconds: 2),
    () => 'Future 2 Callback',
  );

  final future3 = Future.delayed(
    const Duration(seconds: 3),
    () => 'Future 3 Callback',
  );

  Future<int?> example0() async {
    print('Example 0 : Start');
    final listResult = <String>[];
    final startTime = DateTime.now();
    try {
      final result1 = await future1;
      final result2 = await future2;
      final result3 = await future3;
      listResult.add(result1);
      listResult.add(result2);
      listResult.add(result3);
      return DateTime.now().difference(startTime).inSeconds;
    } catch (e) {
      print(e);
      return null;
    }
  }

  void example01() async {
    print('Example 01 : Start');
    final listResult = <String>[];
    final startTime = DateTime.now();
    try {
      final result = await Future.wait([
        future1,
        future2,
        future3,
      ]);
      listResult.addAll(result);
      print(listResult);
    } catch (e) {
      print(e);
    } finally {
      final endTime = DateTime.now();
      final duration = endTime.difference(startTime);
      print('Duration: $duration');
      print('Example 01 : End');
    }
  }

  void example1() {
    // 1. Kesalahan yang sering di lakukan saat menghandle future yang banyak adalah dengan menggunakan cara berikut:
    Future.wait([
      future1,
      future2,
      future3,
    ]).then((value) {
      print(value);
    }).catchError((e) {
      print(e);
    });
    // Output:
    // Exception: Future 3 Error
  }

  // 1. Kesalahan yang sering di lakukan saat menghandle future yang banyak adalah dengan menggunakan cara berikut:
  // contoh yang salah:
  // ```dart
  // Future.wait([
  //   future1,
  //   future2,
  //   future3,
  //   future4,
  //   future5,
  // ]).then((value) {
  // do something
  // });
  // ```
  // Penjelasan: Ketika salah satu future gagal maka future yang lainnya tidak akan dijalankan.
  // Solusi: Gunakan cara berikut:
  // ```dart
  // Future.wait([
  //   future1.catchError((e) => print(e)),
  //   future2.catchError((e) => print(e)),
  //   future3.catchError((e) => print(e)),
  //   future4.catchError((e) => print(e)),
  //   future5.catchError((e) => print(e)),
  // ]).then((value) {
  // do something
  // });
  // ```
  // Penjelasan: Dengan cara ini, ketika salah satu future gagal maka future yang lainnya tetap akan dijalankan.
}

void main() async {
  final tips = MultiFutureWaitTips();
  final duration1 = await tips.example0();
  print('Duration 1: $duration1');
  // tips.example01();
}
