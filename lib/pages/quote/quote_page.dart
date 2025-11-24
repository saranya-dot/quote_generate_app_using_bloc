import 'package:bloc_demo/pages/quote/home/bloc/quote_bloc.dart';
import 'package:bloc_demo/pages/quote/widgets/custom_btn.dart';
import 'package:bloc_demo/pages/quote/widgets/error_widgets.dart';
import 'package:bloc_demo/pages/quote/widgets/quotes_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class QuotePageWrapperProvider extends StatelessWidget {
  const QuotePageWrapperProvider({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(create: (context) => QuoteBloc(), child: QuotePage());
  }
}

class QuotePage extends StatelessWidget {
  const QuotePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Quote Home')),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            // QuotesWidgets(quote: 'Hello'),
            // SizedBox(height: 15),
            // ErrorWidgets(msg: "some error occured !!!!"),
            // SizedBox(height: 15),
            // CircularProgressIndicator(color: Colors.red),
            Center(
              child: BlocBuilder<QuoteBloc, QuoteState>(
                builder: (context, state) {
                  if (state is QuoteInitial) {
                    return Text('Quote is waiting');
                  } else if (state is QuoteLoading) {
                    return CircularProgressIndicator(color: Colors.red);
                  } else if (state is QuoteStateLoaded) {
                    return QuotesWidgets(quote: state.quote);
                  } else if (state is QuoteStateError) {
                    return ErrorWidgets(msg: state.msg);
                  }
                  return const ErrorWidgets(msg: "error");
                },
              ),
            ),
            Spacer(),
            CustomBtn(),
            SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}
