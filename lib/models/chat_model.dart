// class AllRooms {
//   late int id;
//   String chatSlug;
//   String createdAt;
//   String welcomeMsg;
//   int sender;
//   int receiver;

//   AllRooms(
//       {this.id,
//       this.chatSlug,
//       this.createdAt,
//       this.welcomeMsg,
//       this.sender,
//       this.receiver});

//   AllRooms.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     chatSlug = json['chat_slug'];
//     createdAt = json['created_at'];
//     welcomeMsg = json['welcome_msg'];
//     sender = json['sender'];
//     receiver = json['receiver'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['id'] = this.id;
//     data['chat_slug'] = this.chatSlug;
//     data['created_at'] = this.createdAt;
//     data['welcome_msg'] = this.welcomeMsg;
//     data['sender'] = this.sender;
//     data['receiver'] = this.receiver;
//     return data;
//   }
// }