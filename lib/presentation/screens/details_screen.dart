import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:push_app/domain/entities/push_message.dart';
import 'package:push_app/presentation/blocs/notifications/notifications_bloc.dart';

class DetailsScreen extends StatelessWidget {
  final String pushMessageId;

  const DetailsScreen({
    super.key,
    required this.pushMessageId,
  });

  @override
  Widget build(BuildContext context) {
    final pushMessage =
        context.watch<NotificationsBloc>().getMessageById(pushMessageId);

    if (pushMessage == null) {
      return const Scaffold(
        body: Center(
          child: Text('Push message not found'),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Details Push'),
      ),
      body: _DetailsView(pushMessage: pushMessage),
    );
  }
}

class _DetailsView extends StatelessWidget {
  final PushMessage pushMessage;
  const _DetailsView({super.key, required this.pushMessage});

  @override
  Widget build(BuildContext context) {
    final textStyles = Theme.of(context).textTheme;

    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 10,
      ),
      child: Column(
        children: [
          if (pushMessage.imageUrl != null)
            Image.network(pushMessage.imageUrl!),
          const SizedBox(
            height: 10,
          ),
          Text(
            pushMessage.title,
            style: textStyles.titleLarge,
          ),
          const SizedBox(
            height: 10,
          ),
          Text(pushMessage.body, style: textStyles.bodyMedium),
          const SizedBox(
            height: 10,
          ),
          Text(pushMessage.sentDate.toString(), style: textStyles.bodySmall),
        ],
      ),
    );
  }
}
