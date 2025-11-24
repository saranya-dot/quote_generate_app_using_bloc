import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'quote_event.dart';
part 'quote_state.dart';

class QuoteBloc extends Bloc<QuoteRequestEvent, QuoteState> {
  QuoteBloc() : super(QuoteInitial()) {
    on<QuoteRequestEvent>((event, emit) async {
      // logic
      emit(QuoteLoading());
      print('Quote request triggred');
      //get some quotes
      await Future.delayed(Duration(seconds: 3), () {
        emit(
          QuoteStateLoaded(
            quote:
                "“Life isn’t about finding yourself. Life is about creating yourself.”― George Bernard Shaw",
          ),
        );
        // emit(QuoteStateError(msg: 'Error!!'));
      });
      //emit error state
    })
  }
}
