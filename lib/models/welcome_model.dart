class WelcomeModel {
  late int id;
  late String chatSlug;
  late String createdAt;
  late String welcomeMsg;
  late int sender;
  late int receiver;

  WelcomeModel(
      {
      required this.id,
      required this.chatSlug,
      required this.createdAt,
      required this.welcomeMsg,
      required this.sender,
      required this.receiver
      });

  WelcomeModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    chatSlug = json['chat_slug'];
    createdAt = json['created_at'];
    welcomeMsg = json['welcome_msg'];
    sender = json['sender'];
    receiver = json['receiver'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['chat_slug'] = this.chatSlug;
    data['created_at'] = this.createdAt;
    data['welcome_msg'] = this.welcomeMsg;
    data['sender'] = this.sender;
    data['receiver'] = this.receiver;
    return data;
  }
}