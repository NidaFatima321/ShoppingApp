// To parse this JSON data, do
//
//     final courierShipment = courierShipmentFromJson(jsonString);

import 'dart:convert';

CourierShipment courierShipmentFromJson(String str) =>
    CourierShipment.fromJson(json.decode(str));

String courierShipmentToJson(CourierShipment data) =>
    json.encode(data.toJson());

class CourierShipment {
  CourierShipment({
    required this.responseCode,
    required this.message,
    required this.datetime,
    required this.data,
  });

  String responseCode;
  String message;
  String datetime;
  List<Shipment> data;

  factory CourierShipment.fromJson(Map<String, dynamic> json) =>
      CourierShipment(
        responseCode: json["responseCode"],
        message: json["message"],
        datetime: json["datetime"],
        data:
            List<Shipment>.from(json["data"].map((x) => Shipment.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "responseCode": responseCode,
        "message": message,
        "datetime": datetime,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
      };
}

class Shipment {
  Shipment(
      {required this.cNNumber,
      required this.courierId,
      this.consignmentName,
      this.consignmentPhone,
      this.consignmentAddress,
      required this.originId,
      required this.arvlOrigin,
      required this.destId,
      required this.arvlDest,
      required this.cnType,
      required this.latitude,
      required this.longitude,
      required this.mtd,
      required this.pcs,
      required this.weight,
      required this.arvLDate,
      required this.arvLTime,
      required this.arvLZone,
      required this.sharTCn,
      required this.useRId,
      required this.couRDate,
      required this.courTime,
      this.consGPhone,
      required this.hRemarks,
      required this.printTime,
      required this.serialNo,
      required this.product,
      this.giftwiftItem,
      required this.status});

  String? cNNumber;
  String? courierId;
  dynamic consignmentName;
  dynamic consignmentPhone;
  dynamic consignmentAddress;
  String? originId;
  String? arvlOrigin;
  ArvLZone? destId;
  ArvlDest? arvlDest;
  CnType? cnType;
  double? latitude;
  double? longitude;
  String? mtd;
  int pcs;
  int weight;
  String? arvLDate;
  String? arvLTime;
  ArvLZone arvLZone;
  String? sharTCn;
  String? useRId;
  CouRDate couRDate;
  String? courTime;
  dynamic consGPhone;
  HRemarks hRemarks;
  String? printTime;
  int serialNo;
  Product product;
  dynamic giftwiftItem;
  String status;

  factory Shipment.fromJson(Map<String, dynamic> json) => Shipment(
      cNNumber: json["cN_NUMBER"],
      courierId: json["courier_id"],
      consignmentName: json["consignment_name"],
      consignmentPhone: json["consignment_phone"],
      consignmentAddress: json["consignment_address"],
      originId: json["origin_id"],
      arvlOrigin: json["arvl_origin"],
      destId: arvLZoneValues.map[json["dest_id"]],
      arvlDest: arvlDestValues.map[json["arvl_dest"]],
      cnType: cnTypeValues.map[json["cn_type"]],
      latitude: json["latitude"]?.toDouble(),
      longitude: json["longitude"]?.toDouble(),
      mtd: json["mtd"],
      pcs: json["pcs"],
      weight: json["weight"],
      arvLDate: json["arvL_DATE"],
      arvLTime: json["arvL_TIME"],
      arvLZone: arvLZoneValues.map[json["arvL_ZONE"]]!,
      sharTCn: json["sharT_CN"],
      useRId: json["useR_ID"],
      couRDate: couRDateValues.map[json["couR_DATE"]]!,
      courTime: json["cour_Time"],
      consGPhone: json["consG_PHONE"],
      hRemarks: hRemarksValues.map[json["h_REMARKS"]]!,
      printTime: json["print_time"],
      serialNo: json["serial_no"],
      product: productValues.map[json["product"]]!,
      giftwiftItem: json["giftwift_item"],
      status: json['status'] ?? "inprocess");

  Map<String, dynamic> toJson() => {
        "cN_NUMBER": cNNumber,
        "courier_id": courierId,
        "consignment_name": consignmentName,
        "consignment_phone": consignmentPhone,
        "consignment_address": consignmentAddress,
        "origin_id": originId,
        "arvl_origin": arvlOrigin,
        "dest_id": arvLZoneValues.reverse[destId],
        "arvl_dest": arvlDestValues.reverse[arvlDest],
        "cn_type": cnTypeValues.reverse[cnType],
        "latitude": latitude,
        "longitude": longitude,
        "mtd": mtd,
        "pcs": pcs,
        "weight": weight,
        "arvL_DATE": arvLDate,
        "arvL_TIME": arvLTime,
        "arvL_ZONE": arvLZoneValues.reverse[arvLZone],
        "sharT_CN": sharTCn,
        "useR_ID": useRId,
        "couR_DATE": couRDateValues.reverse[couRDate],
        "cour_Time": courTime,
        "consG_PHONE": consGPhone,
        "h_REMARKS": hRemarksValues.reverse[hRemarks],
        "print_time": printTime,
        "serial_no": serialNo,
        "product": productValues.reverse[product],
        "giftwift_item": giftwiftItem,
        'status': status
      };
}

enum ArvLZone { P, THE_00592 }

final arvLZoneValues =
    EnumValues({"P": ArvLZone.P, "00592": ArvLZone.THE_00592});

enum ArvlDest { KARACHI }

final arvlDestValues = EnumValues({"KARACHI": ArvlDest.KARACHI});

enum CnType { G }

final cnTypeValues = EnumValues({"G": CnType.G});

enum CouRDate { THE_03072023000000 }

final couRDateValues =
    EnumValues({"03/07/2023 00:00:00": CouRDate.THE_03072023000000});

enum HRemarks { EMPTY, BH, NC }

final hRemarksValues =
    EnumValues({"BH": HRemarks.BH, "": HRemarks.EMPTY, "*NC": HRemarks.NC});

enum Product { GENERAL }

final productValues = EnumValues({"General": Product.GENERAL});

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
