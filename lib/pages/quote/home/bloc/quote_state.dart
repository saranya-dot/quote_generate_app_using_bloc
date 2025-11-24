part of 'quote_bloc.dart';

@immutable
sealed class QuoteState {}

final class QuoteInitial extends QuoteState {}

final class QuoteLoading extends QuoteState {}

final class QuoteStateLoaded extends QuoteState {
  final String quote;
  QuoteStateLoaded({required this.quote});
}

final class QuoteStateError extends QuoteState {
  final String msg;
  QuoteStateError({required this.msg});
}
