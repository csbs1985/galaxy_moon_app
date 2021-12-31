class Message {
  final String messageId;
  final String messageFrom;
  final String messageText;
  final String messageTo;
  final String messageDate;
  final bool messageRead;

  Message(
      {required this.messageId,
      required this.messageFrom,
      required this.messageText,
      required this.messageTo,
      required this.messageDate,
      required this.messageRead});
}
