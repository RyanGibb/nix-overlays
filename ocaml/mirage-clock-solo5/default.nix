{ lib
, buildDunePackage
, mirage-clock
}:

buildDunePackage {
  pname = "mirage-clock-solo5";
  version = "4.2.0";
  src = builtins.fetchurl {
    url = https://github.com/mirage/mirage-clock/releases/download/v4.2.0/mirage-clock-4.2.0.tbz;
    sha256 = "0iwqi2381fbi3jlcw424dbhjs4fpisw7qpqzfjx7jg72bdfx25zs";
  };

  minimumOCamlVersion = "4.08";
  strictDeps = true;

  propagatedBuildInputs = [
    mirage-clock
  ];
}
