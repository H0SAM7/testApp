class NotificationModel {
  int? id;
  Data? data;
  String? createdAt;
  String? updatedAt;
  String? imageFullUrl;

  NotificationModel({
    this.id,
    this.data,
    this.createdAt,
    this.updatedAt,
    this.imageFullUrl,
  });

  NotificationModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    imageFullUrl = json['image_full_url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    data['image_full_url'] = imageFullUrl;
    return data;
  }
}

class Data {
  String? title;
  String? description;
  String? type;
  dynamic orderId;
  String? orderStatus;

  Data({
    this.title,
    this.description,
    this.type,
    this.orderId,
    this.orderStatus,
  });

  Data.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    description = json['description'];
    type = json['type'];
    orderId = json['order_id'];
    orderStatus = json['order_status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['title'] = title;
    data['description'] = description;
    data['type'] = type;
    data['order_id'] = orderId;
    data['order_status'] = orderStatus;
    return data;
  }
}
