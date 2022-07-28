
class MotorModel {
  String marka;
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




MotorModel ktm250 = MotorModel(
    marka: 'KTM',
    isFavorite: false,
    resim: "assets/images/ktm_250/250_Duke.jpg",
    resimLeft: "assets/images/ktm_250/250_Duke_01.jpg",
    resimRight: "assets/images/ktm_250/250_Duke_02.jpg",
    model: 'KTM Duke 250',
    yil: '2022',
    fiyat: '154.0 ₺',
    yildiz: 3.4,
    motorTipi: "1 silindir, 4 zamanlı, benzin",
    motorHacmi: '249.9 cc',
    motorTork: '28.0 nm',
    motorPower: '31.0',
    motorHiz: '147 km/h',
    sanziman: "Sıralı, 6 vites",
    debriyaj: "PASC kaydırmalı debriyaj",
    sogutma: "Sıvı soğutma",
    atesleme: 'Bosch EMS',
    sasiTipi: "Çelik borulardan ana boru şasi, toz kaplama",
    onAmortisor: 'WP APEX 43',
    arkaAmortisor: "WP APEX Monoshock",
    onFren: "Dört pistonlu / Disk fren",
    arkaFren: "Tek pistonlu / Disk fren",
    frenDiskCap: "320 mm / 230 mm",
    zincir: "3520 X-Ring",
    onLastikCap: "110/70 17",
    arkaLastikCap: "150/60 17",
    yukseklik: "830",
    agirlik: "149",
    yakitDeposu: "13.4",
    ortalamaYakit: "3.46 l/100 km"
);
MotorModel ktm390 = MotorModel(
  marka: 'KTM' ,
  isFavorite: false,
  resim: "assets/images/390_Duke.jpg",
  resimLeft: "assets/images/ktm_250/250_Duke.jpg",
  resimRight: "assets/images/ktm_250/250_Duke.jpg",
  model: 'KTM Duke 390',
  yil: '2021',
  fiyat: '200.0 ₺',
  yildiz: 4.5,
  motorTipi: "Paralel çift silindirli 4 zamanlı",
  motorHacmi: '373.0 cc',
  motorPower: '32kW 44hp',
  motorTork: '37.0 nm',
  motorHiz: '170 km/h ',
  sanziman: "Sıralı, 6 vites",
  debriyaj: "PASC kaydırmalı debriyaj",
  sogutma: "Sıvı soğutma",
  atesleme: 'Bosch EMS',
  sasiTipi: "Çelik borulardan ana boru şasi, toz kaplama",
  onAmortisor: 'WP APEX 43',
  arkaAmortisor: "WP APEX Monoshock",
  onFren: "Dört pistonlu fren kaliper",
  arkaFren: "Tek pistonlu fren kaliper",
  frenDiskCap: "320 mm / 230 mm",
  zincir: "520 X-Ring",
  onLastikCap: "110/70 17",
  arkaLastikCap: "150/60 17",
  yukseklik: "830 mm",
  agirlik: "149 kg",
  yakitDeposu: "13.4 l",
  ortalamaYakit: "3.46 l/100 km",

);
MotorModel ktm890 = MotorModel(
    marka: 'KTM',
    isFavorite: false,
    resim: "assets/images/ktm_890/890_Duke.png",
    resimLeft: "assets/images/ktm_890/890_Duke_01.png",
    resimRight: "assets/images/ktm_890/890_Duke_02.png",
    model: 'KTM Duke 890',
    yil: '2022',
    fiyat: '287.900',
    yildiz: 4.5,
    motorTipi: "Paralel çift silindirli 4 zamanlı",
    motorHacmi: '889 cc',
    motorPower: '89kW 121hp',
    motorHiz: '240',
    sanziman: "Sıralı, 6 vites",
    debriyaj: "PASC kaydırmalı debriyaj",
    sogutma: "Sıvı soğutma",
    atesleme: 'Bosch EMS',
    sasiTipi: "Krom molibden çelik borudan ana boru şasi",
    onAmortisor: 'WP APEX 43',
    arkaAmortisor: "WP APEX Monoshock",
    onFren: "Dört pistonlu, 2x Brembo radyal kaliper",
    arkaFren: "Tek pistonlu Brembo yüzer kaliper",
    frenDiskCap: "320 mm / 240 mm",
    zincir: "520 X-Ring",
    onLastikCap: "120/70 17",
    arkaLastikCap: "180/55 17",
    yukseklik: "834",
    agirlik: "166",
    yakitDeposu: "14",
    ortalamaYakit: "4.74 l/100 km",
    motorTork: '99 nm'
);
