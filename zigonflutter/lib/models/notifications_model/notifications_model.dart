// To parse this JSON data, do
//
//     final notificationModel = notificationModelFromJson(jsonString);

import 'dart:convert';

NotificationModel notificationModelFromJson(String str) => NotificationModel.fromJson(json.decode(str));

String notificationModelToJson(NotificationModel data) => json.encode(data.toJson());

class NotificationModel {
    int code;
    List<Msg> msg;

    NotificationModel({
        required this.code,
        required this.msg,
    });

    factory NotificationModel.fromJson(Map<String, dynamic> json) => NotificationModel(
        code: json["code"],
        msg: List<Msg>.from(json["msg"].map((x) => Msg.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "code": code,
        "msg": List<dynamic>.from(msg.map((x) => x.toJson())),
    };
}

class Msg {
    Notification notification;
    Video video;
    List<Receiver> sender;
    List<Receiver> receiver;

    Msg({
        required this.notification,
        required this.video,
        required this.sender,
        required this.receiver,
    });

    factory Msg.fromJson(Map<String, dynamic> json) => Msg(
        notification: Notification.fromJson(json["Notification"]),
        video: Video.fromJson(json["Video"]),
        sender: List<Receiver>.from(json["Sender"].map((x) => Receiver.fromJson(x))),
        receiver: List<Receiver>.from(json["Receiver"].map((x) => Receiver.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "Notification": notification.toJson(),
        "Video": video.toJson(),
        "Sender": List<dynamic>.from(sender.map((x) => x.toJson())),
        "Receiver": List<dynamic>.from(receiver.map((x) => x.toJson())),
    };
}

class Notification {
    String id;
    String senderId;
    String receiverId;
    String string;
    String type;
    String videoId;
    DateTime created;

    Notification({
        required this.id,
        required this.senderId,
        required this.receiverId,
        required this.string,
        required this.type,
        required this.videoId,
        required this.created,
    });

    factory Notification.fromJson(Map<String, dynamic> json) => Notification(
        id: json["id"],
        senderId: json["sender_id"],
        receiverId: json["receiver_id"],
        string: json["string"],
        type: json["type"],
        videoId: json["video_id"],
        created: DateTime.parse(json["created"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "sender_id": senderId,
        "receiver_id": receiverId,
        "string": string,
        "type": type,
        "video_id": videoId,
        "created": created.toIso8601String(),
    };
}

class Receiver {
    String id;
    String fullName;
    String verified;
    String userName;
    String profilePic;

    Receiver({
        required this.id,
        required this.fullName,
        required this.verified,
        required this.userName,
        required this.profilePic,
    });

    factory Receiver.fromJson(Map<String, dynamic> json) => Receiver(
        id: json["id"],
        fullName: json["full_name"],
        verified: json["verified"],
        userName: json["user_name"],
        profilePic: json["profile_pic"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "full_name": fullName,
        "verified": verified,
        "user_name": userName,
        "profile_pic": profilePic,
    };
}

class Video {
    String id;
    String userId;
    String description;
    String video;
    String thum;
    String gif;
    String view;
    String section;
    String soundId;
    String privacyType;
    String allowComments;
    String allowDuet;
    String block;
    String duetVideoId;
    String oldVideoId;
    String duration;
    String promote;
    DateTime created;

    Video({
        required this.id,
        required this.userId,
        required this.description,
        required this.video,
        required this.thum,
        required this.gif,
        required this.view,
        required this.section,
        required this.soundId,
        required this.privacyType,
        required this.allowComments,
        required this.allowDuet,
        required this.block,
        required this.duetVideoId,
        required this.oldVideoId,
        required this.duration,
        required this.promote,
        required this.created,
    });

    factory Video.fromJson(Map<String, dynamic> json) => Video(
        id: json["id"],
        userId: json["user_id"],
        description: json["description"],
        video: json["video"],
        thum: json["thum"],
        gif: json["gif"],
        view: json["view"],
        section: json["section"],
        soundId: json["sound_id"],
        privacyType: json["privacy_type"],
        allowComments: json["allow_comments"],
        allowDuet: json["allow_duet"],
        block: json["block"],
        duetVideoId: json["duet_video_id"],
        oldVideoId: json["old_video_id"],
        duration: json["duration"],
        promote: json["promote"],
        created: DateTime.parse(json["created"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "user_id": userId,
        "description": description,
        "video": video,
        "thum": thum,
        "gif": gif,
        "view": view,
        "section": section,
        "sound_id": soundId,
        "privacy_type": privacyType,
        "allow_comments": allowComments,
        "allow_duet": allowDuet,
        "block": block,
        "duet_video_id": duetVideoId,
        "old_video_id": oldVideoId,
        "duration": duration,
        "promote": promote,
        "created": created.toIso8601String(),
    };
}
