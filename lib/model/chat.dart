class Chat {
  final int id;
  final String imageUrl;
  final String contactNameOrGroupName;
  final String lastAction;
  final DateTime lastMessage;
  final int unReadMessage;
  bool isMuted = false;

  Chat(
      {this.id,
      this.imageUrl,
      this.contactNameOrGroupName,
      this.lastAction,
      this.lastMessage,
      this.unReadMessage,
      this.isMuted});
}
