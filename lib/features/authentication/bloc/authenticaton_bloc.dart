import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'authenticaton_event.dart';
part 'authenticaton_state.dart';

class AuthenticatonBloc extends Bloc<AuthenticatonEvent, AuthenticatonState> {
  AuthenticatonBloc() : super(AuthenticatonInitial()) {
    on<AuthenticatonEvent>((event, emit) {
      // TODO(starfoxcom): implement event handler
    });
  }
}
