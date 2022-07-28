import 'package:flutter/cupertino.dart';
import 'package:motorotam_v2/model/tur_model.dart';

class TurRiverpod extends ChangeNotifier {
  List<TurModel> turler = [];

  void init() {
    turler.add(
      TurModel(turAdi: 'Racing',
      koseLeft: const Radius.circular(20),
        koseRight: const Radius.circular(0)),
    );
    turler.add(
      TurModel(turAdi: 'Naked',
          koseLeft: const Radius.circular(0),
          koseRight: const Radius.circular(0)),
    );
    turler.add(
      TurModel(turAdi: 'Enduro',
          koseLeft: const Radius.circular(0),
          koseRight: const Radius.circular(0)),
    );
    turler.add(
      TurModel(turAdi: 'Scooter',
          koseLeft: const Radius.circular(0),
          koseRight: const Radius.circular(0)),
    );
    turler.add(
      TurModel(turAdi: 'Cros',
          koseLeft: const Radius.circular(0),
          koseRight: const Radius.circular(0)),
    );
    turler.add(
      TurModel(turAdi: 'Touring',
          koseLeft: const Radius.circular(0),
          koseRight: const Radius.circular(0)),
    );
    turler.add(
      TurModel(turAdi: 'Cruisers',
          koseLeft: const Radius.circular(0),
          koseRight: const Radius.circular(0)),
    );
    turler.add(
      TurModel(turAdi: 'Electric',
          koseLeft: const Radius.circular(0),
          koseRight: const Radius.circular(0)),
    );
    turler.add(
      TurModel(turAdi: 'Scrambler',
          koseLeft: const Radius.circular(0),
          koseRight: const Radius.circular(0)),
    );
    turler.add(
      TurModel(turAdi: 'All..',
          koseLeft: const Radius.circular(0),
          koseRight: const Radius.circular(20)),
    );
  }
}
