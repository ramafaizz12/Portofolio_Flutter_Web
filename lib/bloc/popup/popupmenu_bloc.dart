import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'popupmenu_event.dart';
part 'popupmenu_state.dart';

class PopupmenuBloc extends Bloc<bool, bool> {
  PopupmenuBloc() : super(false) {
    on<bool>((event, emit) {
      emit(event);
    });
  }
}
