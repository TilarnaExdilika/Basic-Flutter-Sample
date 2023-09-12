class Item {
  String? title;
  String? categogy;
  String? thumb_url;
  String? location;
  String? price;

  Item(
    this.title,
    this.categogy,
    this.location,
    this.price,
    this.thumb_url,
  );

  static List<Item> recommendation = [
    Item("Villa hiện đại quận 1", "Villa", "Tp.HCM", "2000",
        "https://i.imgur.com/qHTq93U.jpeg"),
    Item("Biệt thự sang trọng thủ đô", "Biệt thự", "Hà Nội", "3000",
        "https://i.imgur.com/qHTq93U.jpeg"),
    Item("Villa nghỉ dưỡng tại Phú Quốc", "Villa", "Phú Quốc", "1000",
        "https://i.imgur.com/qHTq93U.jpeg"),
    Item("Văn phòng cho thuê tại Sài gòn", "Văn phòng", "Tp.HCM", "4000",
        "https://i.imgur.com/qHTq93U.jpeg")
  ];

  static List<Item> nearby = [
    Item("Nhà hiện đại gò vấp", "Nhà", "Tp.HCM", "1500",
        "https://i.imgur.com/qHTq93U.jpeg"),
    Item("Villa Thủ đức", "Villa", "!p.HCM", "3600",
        "https://i.imgur.com/qHTq93U.jpeg"),
    Item("Nhà hiện đại", "Nhà", "Tp.HCM", "4900",
        "https://i.imgur.com/qHTq93U.jpeg"),
    Item("Nhà Gò Vấp", "Nhà", "Tp.HCM ", "1500",
        "https://i.imgur.com/qHTq93U.jpeg")
  ];
}
