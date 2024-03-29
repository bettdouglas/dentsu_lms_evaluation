import 'package:flutter/material.dart';

class ErrorMessageWidget extends StatelessWidget {
  const ErrorMessageWidget(this.errorMessage, {super.key});
  final String errorMessage;
  @override
  Widget build(BuildContext context) {
    return SelectableText(
      errorMessage,
      style:
          Theme.of(context).textTheme.titleLarge!.copyWith(color: Colors.red),
    );
  }
}

class ErrorMessageWidgetWithRetry extends StatelessWidget {
  const ErrorMessageWidgetWithRetry(
    this.errorMessage, {
    super.key,
    required this.onRetry,
    this.retryText = 'Retry',
    this.actions = const <Widget>[],
  });
  final String errorMessage;
  final String retryText;
  final VoidCallback onRetry;
  final List<Widget> actions;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SelectableText(
          errorMessage,
          style: Theme.of(context)
              .textTheme
              .titleLarge!
              .copyWith(color: Colors.red),
        ),
        const SizedBox(height: 20),
        Center(
          child: ElevatedButton(
            onPressed: onRetry,
            child: Text(retryText),
          ),
        ),
        const SizedBox(height: 20),
        ...actions,
      ],
    );
  }
}
