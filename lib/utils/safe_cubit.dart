import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SafeCubit<State> extends Cubit<State> {
  SafeCubit(super.initialState);

  @override
  void emit(State state) {
    if (!isClosed) {
      super.emit(state);
    } else {
      return;
    }
  }

  @override
  void onChange(Change<State> change) {
    if (!isClosed) {
      if (kDebugMode) {
        print(change);
      }
      super.onChange(change);
    } else {
      return;
    }
  }
}
