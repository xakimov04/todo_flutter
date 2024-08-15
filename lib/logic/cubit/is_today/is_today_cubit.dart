import 'package:bloc/bloc.dart';

class IsTodayCubit extends Cubit<bool> {
  IsTodayCubit() : super(false);

  bool get value => state;

  void toggleIsToday() => emit(!state);

  void toInitial() => emit(false);
}
