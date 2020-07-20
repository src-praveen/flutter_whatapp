class Call {
  final int id;
  final String imageUrl;
  final String callFrom;
  final DateTime callTime;
  final bool isIncoming;
  final bool isVideoCall;

  Call({
    this.id,
    this.imageUrl,
    this.callFrom,
    this.callTime,
    this.isIncoming,
    this.isVideoCall,
  });
}
