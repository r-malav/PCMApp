class mathsbook {
  String chapter;
  String chapterUrl;

  mathsbook({this.chapter, this.chapterUrl});

  mathsbook.fromJson(Map<String, dynamic> json) {
    chapter = json['Chapter'];
    chapterUrl = json['Chapter url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Chapter 1'] = this.chapter;
    data['Chapter url'] = this.chapterUrl;
    return data;
  }
}