{ lib
, buildDunePackage
, bheap
, cstruct
, lwt
, metrics
, mirage-runtime
, duration
}:

buildDunePackage {
  pname = "mirage-solo5";
  version = "0.3.0";
  src = builtins.fetchurl {
    url = https://github.com/mirage/mirage-solo5/releases/download/v0.9.1/mirage-solo5-0.9.1.tbz;
    sha256 = "1sfy444lwrks4yjv4kd1hvy693x222wsmz2na205vahll1cp86sm";
  };

  minimumOCamlVersion = "4.08";
  strictDeps = true;

  propagatedBuildInputs = [
    bheap
    cstruct
    lwt
    metrics
    mirage-runtime
    duration
  ];
}
