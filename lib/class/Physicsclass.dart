class Physicsclass {
  String chapter;
  String chapterUrl;

  Physicsclass({this.chapter, this.chapterUrl});

  Physicsclass.fromJson(Map<String, dynamic> json) {
    chapter = json['Chapter'];
    chapterUrl = json['Chapter url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Chapter'] = this.chapter;
    data['Chapter url'] = this.chapterUrl;
    return data;
  }
}