import 'package:flutter_security_checker/flutter_security_checker.dart';
import 'package:root_jailbreak_sniffer/rjsniffer.dart';
import 'package:jailbreak_root_detection/jailbreak_root_detection.dart';

JailbreakRootDetection jailbreakRootDetection = new JailbreakRootDetection();

bool isReallyDebugged() {
  return isDebugged() || isDebugged_2();
}

bool isReallyRealDevice() {
  return isRealDevice() || isRealDevice_2();
}

bool isRooted() {
  try {
    bool theValue = false;

    FlutterSecurityChecker.isRooted.then((value) {
      theValue = value;
    }).catchError((error) {
      theValue = false;
    });

    return theValue;
  } catch (e) {
   return false;
  }
}

bool isRealDevice() {
  try {
    bool theValue = false;

    FlutterSecurityChecker.isRealDevice.then((value) {
      theValue = value;
    }).catchError((error) {
      theValue = false;
    });

    return theValue;
  } catch (e) {
    return false;
  }
}

bool hasCorrectlyInstalled() {
  try {
    bool theValue = false;

    FlutterSecurityChecker.hasCorrectlyInstalled.then((value) {
      theValue = value;
    }).catchError((error) {
      theValue = false;
    });

    return theValue;
  } catch (e) {
    return false;
  }
}

bool isCompromised() {
  try {
    bool theValue = false;

    Rjsniffer.amICompromised().then((value) {
      theValue = value!;
    }).catchError((error) {
      theValue = false;
    });

    return theValue;
  } catch (e) {
    return false;
  }
}

bool isEmulator() {
  try {
    bool theValue = false;

    Rjsniffer.amIEmulator().then((value) {
      theValue = value!;
    }).catchError((error) {
      theValue = false;
    });

    return theValue;
  } catch (e) {
    return false;
  }
}

bool isDebugged() {
  try {
    bool theValue = false;

    Rjsniffer.amIDebugged().then((value) {
      theValue = value!;
    }).catchError((error) {
      theValue = false;
    });

    return theValue;
  } catch (e) {
    return false;
  }
}

bool isNotTrust() {
  try {
    bool theValue = false;

    jailbreakRootDetection.isNotTrust.then((value) {
      theValue = value;
    }).catchError((error) {
      theValue = false;
    });

    return theValue;
  } catch (e) {
    return false;
  }
}

bool isJailBroken() {
  try {
    bool theValue = false;

    jailbreakRootDetection.isJailBroken.then((value) {
      theValue = value;
    }).catchError((error) {
      theValue = false;
    });

    return theValue;
  } catch (e) {
    return false;
  }
}

bool isDebugged_2() {
  try {
    bool theValue = false;

    jailbreakRootDetection.isDebugged.then((value) {
      theValue = value;
    }).catchError((error) {
      theValue = false;
    });

    return theValue;
  } catch (e) {
    return false;
  }
}

bool isRealDevice_2() {
  try {
    bool theValue = false;

    jailbreakRootDetection.isRealDevice.then((value) {
      theValue = value;
    }).catchError((error) {
      theValue = false;
    });

    return theValue;
  } catch (e) {
    return false;
  }
}

bool isDevMode() {
  try {
    bool theValue = false;

    jailbreakRootDetection.isDevMode.then((value) {
      theValue = value;
    }).catchError((error) {
      theValue = false;
    });

    return theValue;
  } catch (e) {
    return false;
  }
}

bool isOnExternalStorage() {
  try {
    bool theValue = false;

    jailbreakRootDetection.isOnExternalStorage.then((value) {
      theValue = value;
    }).catchError((error) {
      theValue = false;
    });

    return theValue;
  } catch (e) {
    return false;
  }
}