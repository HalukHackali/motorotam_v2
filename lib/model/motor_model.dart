
class MotorModel {
  String marka;
  String tur;
  String model;
  bool isFavorite;
  String yil;
  String fiyat;
  double yildiz;
  String resim;
  String resimRight;
  String resimLeft;

  String motorTipi;
  String motorHacmi;
  String motorTork;
  String motorPower;
  String motorHiz;
  String sanziman;
  String debriyaj;
  String sogutma;
  String atesleme;

  String sasiTipi;
  String onAmortisor;
  String arkaAmortisor;
  String onFren;
  String arkaFren;
  String frenDiskCap;
  String zincir;
  String onLastikCap;
  String arkaLastikCap;
  String yukseklik;
  String agirlik;
  String yakitDeposu;
  String ortalamaYakit;

  MotorModel({
    required this.marka,
    required this.tur,
    required this.isFavorite,
    required this.resim,
    required this.model,
    required this.yil,
    required this.fiyat,
    required this.motorHiz,
    required this.yildiz,
    required this.motorTipi,
    required this.motorHacmi,
    required this.motorPower,
    required this.sanziman,
    required this.debriyaj,
    required this.sogutma,
    required this.atesleme,
    required this.sasiTipi,
    required this.onAmortisor,
    required this.arkaAmortisor,
    required this.onFren,
    required this.arkaFren,
    required this.frenDiskCap,
    required this.zincir,
    required this.onLastikCap,
    required this.arkaLastikCap,
    required this.yukseklik,
    required this.agirlik,
    required this.yakitDeposu,
    required this.ortalamaYakit,
    required this.motorTork,
    required this.resimRight,
    required this.resimLeft,
  });
}

