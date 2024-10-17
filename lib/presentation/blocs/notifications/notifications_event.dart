part of 'notifications_bloc.dart';

abstract class NotificationsEvent {
  const NotificationsEvent();
  // @override
  // List<Object> get props => [];
}

class NotificationStatusChanged extends NotificationsEvent {
  final AuthorizationStatus status;
  const NotificationStatusChanged(this.status);
}

class NotificationReceived extends NotificationsEvent {
  final PushMessage pushMessage;
  const NotificationReceived(this.pushMessage);
}
