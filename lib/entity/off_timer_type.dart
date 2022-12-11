enum OffTimerType {
  off,
  minute30,
  minute60,
  minute90,
  minute120,
  minute180,
  minute300,
}

extension OffTimerTypeFunction on OffTimerType {
  static OffTimerType fromRawPath(String rawPath) {
    switch (rawPath) {
      case 'off':
        return OffTimerType.off;
      case 'minute30':
        return OffTimerType.minute30;
      case 'minute60':
        return OffTimerType.minute60;
      case 'minute90':
        return OffTimerType.minute90;
      case 'minute120':
        return OffTimerType.minute120;
      case 'minute180':
        return OffTimerType.minute180;
      case 'minute300':
        return OffTimerType.minute300;
      default:
        return OffTimerType.off;
    }
  }

  String get fullName {
    switch (this) {
      case OffTimerType.off:
        return 'なし';
      case OffTimerType.minute30:
        return '30分';
      case OffTimerType.minute60:
        return '60分';
      case OffTimerType.minute90:
        return '90分';
      case OffTimerType.minute120:
        return '120分';
      case OffTimerType.minute180:
        return '180分';
      case OffTimerType.minute300:
        return '300分';
    }
  }

  String get rawPath {
    switch (this) {
      case OffTimerType.off:
        return 'off';
      case OffTimerType.minute30:
        return 'minute30';
      case OffTimerType.minute60:
        return 'minute60';
      case OffTimerType.minute90:
        return 'minute90';
      case OffTimerType.minute120:
        return 'minute120';
      case OffTimerType.minute180:
        return 'minute180';
      case OffTimerType.minute300:
        return 'minute300';
    }
  }

  Duration get durationPeriod {
    switch (this) {
      case OffTimerType.off:
        return const Duration(minutes: 0);
      case OffTimerType.minute30:
        return const Duration(minutes: 30);
      case OffTimerType.minute60:
        return const Duration(minutes: 60);
      case OffTimerType.minute90:
        return const Duration(minutes: 90);
      case OffTimerType.minute120:
        return const Duration(minutes: 120);
      case OffTimerType.minute180:
        return const Duration(minutes: 180);
      case OffTimerType.minute300:
        return const Duration(minutes: 300);
    }
  }
}
