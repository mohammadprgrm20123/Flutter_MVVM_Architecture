import 'package:mvvm_in_flutter/models/person_model.dart';
import 'package:pmvvm/pmvvm.dart';

class MainViewModel extends ViewModel {
  int counter = 0;

  List<Person> personList = [];

  @override
  void init() {
    super.init();
    print('init');
  }

  @override
  void onResume() {
    super.onResume();
    print('onPuse');
  }

  @override
  void onBuild() {
    super.onBuild();
    print('onBuild');
  }

  @override
  void onDetach() {
    super.onDetach();
    print('onDetach');
  }

  @override
  void onPause() {
    super.onPause();
    print('onPause');
  }

  @override
  void onDispose() {
    super.onDispose();
    print('onDispose');
  }

  @override
  void onInactive() {
    super.onInactive();
    print('onInactive');
  }

  void insert() {
    Person p = Person(
        name: 'mojtaba',
        family: 'family',
        phoneNumber: '09309103564');
    personList.insert(0, p);
    notifyListeners();
  }

  void remove({required Person value}) {
      personList.remove(value);
      notifyListeners();
  }
}
