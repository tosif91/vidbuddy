import 'package:get/get.dart';
import 'package:hive_flutter/hive_flutter.dart';

ILocalStorageService getLocalStorageService() => Get.find<HiveStorageService>();

abstract class ILocalStorageService {
  ///Initialize local storage service
  Future<bool> init(String path);

  ///writes key:value in local storage
  Future<bool> write({required String key, required dynamic value});

  ///read key from local storage and returns its value or null
  T? read<T>({required String key});

  ///return list of required data items
  List<T> getList<T>();

  Stream? listen<T>();

  ///delete key from local storage and returns success status
  Future<bool> delete({required String key});

  Future<bool> reset();

  // Future<bool> addCart({required CartModel item});
  // Future<bool> removeCart(CartModel data);
  // Future<bool> clearCart();
  // Future<bool> updateCart({required CartModel updatedData});

  // ValueListenable<Box<CartModel>> listenCart();
}

class HiveStorageService implements ILocalStorageService {
  static const String _appBox = 'appBox';
  static const String _cartBox = 'cartBox';

  @override
  getList<T>() {
    switch (T) {
      // case CartModel:
      //   return Hive.box<CartModel>(_cartBox).values.toList() as List<T>;

      default:
        return [];
    }
  }

  @override
  Future<bool> delete({required String key}) async {
    try {
      await Hive.box(_appBox).delete(key);
      return true;
    } catch (e) {
      return false;
    }
  }

  @override
  T? read<T>({required String key}) {
    return Hive.box(_appBox).get(key);
  }

  @override
  Future<bool> write({required String key, required dynamic value}) async {
    try {
      await Hive.box(_appBox).put(key, value);
      return true;
    } catch (e) {
      return false;
    }
  }

  @override
  Future<bool> init(String path) async {
    try {
      Hive.init(path);

      // Hive.registerAdapter(CartModelAdapter());
      await Hive.openBox(_appBox);
      // await Hive.openBox<CartModel>(_cartBox);
      return true;
    } catch (e) {
      return false;
    }
  }

  @override
  Stream? listen<T>() {
    switch (T) {
      // case CartModel:
      //   return Hive.box(_appBox).watch(key: LocalStorageConstant.cartItems);
    }
    return null;
  }

  @override
  Future<bool> reset() async {
    try {
      await Hive.box(_appBox).clear();
      // await clearCart();

      return true;
    } catch (e) {
      return false;
    }
  }

  // @override
  // Future<bool> addCart({required CartModel item}) async {
  //   try {
  //     // final box = Hive.box<CartModel>(_cartBox);
  //     // await box.add(item);
  //     return true;
  //   } catch (e) {
  //     return false;
  //   }
  // }

  // @override
  // Future<bool> clearCart() async {
  //   try {
  //     // final box = Hive.box<CartModel>(_cartBox);
  //     // await box.clear();
  //     return true;
  //   } catch (e) {
  //     return false;
  //   }
  // }

  // @override
  // Future<bool> removeCart(CartModel data) async {
  //   try {
  //     final box = Hive.box<CartModel>(_cartBox);
  //     int? idx = getItemIndex(data);
  //     if (idx == null) return false;
  //     await box.deleteAt(idx);
  //     return true;
  //   } catch (e) {
  //     return false;
  //   }
  // }

  // @override
  // Future<bool> updateCart({required CartModel updatedData}) async {
  //   try {
  //     final box = Hive.box<CartModel>(_cartBox);
  //     int? idx = getItemIndex(updatedData);
  //     if (idx == null) return false;
  //     await box.putAt(idx, updatedData);
  //     return true;
  //   } catch (e) {
  //     return false;
  //   }
  // }

  // int? getItemIndex(CartModel data) {
  //   final box = Hive.box<CartModel>(_cartBox);

  //   List<CartModel> items = box.values.toList();
  //   int? itemToRemove;
  //   for (int i = 0; i < items.length; i++) {
  //     if (items[i].itemID == data.itemID) {
  //       itemToRemove = i;
  //       break;
  //     }
  //   }
  //   return itemToRemove;
  // }
}
