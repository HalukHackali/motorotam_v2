import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:motorotam_v2/riverpod/motor_riverpod.dart';

import 'banner_riverpod.dart';
import 'bottom_navbar_riverpod.dart';
import 'marka_riverpod.dart';
import 'tur_riverpod.dart';

final bottomNavBarRiverpod =
ChangeNotifierProvider((_) => BottomNavBarRiverpod());

final motorRiverpod = ChangeNotifierProvider((_) => MotorRiverpod());

final markaRiverpod = ChangeNotifierProvider((ref) => MarkaRiverpod());

final turRiverpod = ChangeNotifierProvider((ref) => TurRiverpod());

final bannerRiverpod = ChangeNotifierProvider((ref) => BannerRiverpod());

