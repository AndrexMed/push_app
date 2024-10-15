part of 'notifications_bloc.dart';

class NotificationsState extends Equatable {
  final AuthorizationStatus authorizationStatus;
  final List<dynamic> notifications;

  const NotificationsState({
    this.authorizationStatus = AuthorizationStatus.notDetermined,
    this.notifications = const <dynamic>[],
  });

  NotificationsState copyWith({
    AuthorizationStatus? authorizationStatus,
    List<dynamic>? notifications,
  }) {
    return NotificationsState(
      authorizationStatus: authorizationStatus ?? this.authorizationStatus,
      notifications: notifications ?? this.notifications,
    );
  }

  @override
  List<Object> get props => [authorizationStatus, notifications];
}
