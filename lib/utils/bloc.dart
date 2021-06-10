

import 'dart:async';

class Bloc{

  StreamController<bool> _contactScrollEventController = StreamController<bool>.broadcast();
  Stream<bool> get contactScrollStream => _contactScrollEventController.stream;
  Sink<bool> get contactScrollSink => _contactScrollEventController.sink;


  dispose(){
    _contactScrollEventController.close();
  }
}