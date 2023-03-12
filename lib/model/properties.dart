class properties {
  int? id;
  String? name;
  String? price;
  String? description;
  String? address;
  String? city;
  String? state;
  String? zipcode;
  int? userId;
  List<PropertiesImages>? propertiesImages;

  properties(
      {this.id,
        this.name,
        this.price,
        this.description,
        this.address,
        this.city,
        this.state,
        this.zipcode,
        this.userId,
        this.propertiesImages});

  properties.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    price = json['price'];
    description = json['description'];
    address = json['address'];
    city = json['city'];
    state = json['state'];
    zipcode = json['zipcode'];
    userId = json['user_id'];
    if (json['properties_images'] != null) {
      propertiesImages = <PropertiesImages>[];
      json['properties_images'].forEach((v) {
        propertiesImages!.add(new PropertiesImages.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['price'] = this.price;
    data['description'] = this.description;
    data['address'] = this.address;
    data['city'] = this.city;
    data['state'] = this.state;
    data['zipcode'] = this.zipcode;
    data['user_id'] = this.userId;
    if (this.propertiesImages != null) {
      data['properties_images'] =
          this.propertiesImages!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class PropertiesImages {
  int? id;
  String? image;
  int? propertyId;

  PropertiesImages({this.id, this.image, this.propertyId});

  PropertiesImages.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    image = json['image'];
    propertyId = json['property_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['image'] = this.image;
    data['property_id'] = this.propertyId;
    return data;
  }
}