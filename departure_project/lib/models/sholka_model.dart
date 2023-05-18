class Chapters {
  int? Shlok_index;
  String? Sanskrit_Shlok;
  String? English_Shlok;
  String? Hindi_shlok;
  String? Gujarati_shlok;
  String? Source;

  Chapters({
    required this.Shlok_index,
    required this.Sanskrit_Shlok,
    required this.English_Shlok,
    required this.Hindi_shlok,
    required this.Gujarati_shlok,
    required this.Source,
  });

  factory Chapters.frommap({required Map data1}) {
    return Chapters(
      Shlok_index: data1["Shlok_index"],
      Sanskrit_Shlok: data1["Sanskrit_Shlok"],
      English_Shlok: data1["English_Shlok"],
      Hindi_shlok: data1["Hindi_shlok"],
      Gujarati_shlok: data1["Gujarati_shlok"],
      Source: data1["Source"],
    );
  }
}
