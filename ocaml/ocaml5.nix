oself:

with oself;

{
  archi-eio = callPackage ./archi/eio.nix { };

  caqti-eio = buildDunePackage {
    pname = "caqti-eio";
    version = "n/a";
    src = builtins.fetchurl {
      url = https://github.com/anmonteiro/caqti-eio/archive/c709dad.tar.gz;
      sha256 = "0mmjms378akcs7lifpz3s82hw7g6sdxbsyqlb0yrry7as29rccsz";
    };
    propagatedBuildInputs = [ eio eio_main caqti ];
  };

  domainslib = callPackage ./domainslib { };
  lockfree = callPackage ./lockfree { };

  eio = callPackage ./eio { };
  eio_linux = callPackage ./eio/linux.nix { };
  eio_luv = callPackage ./eio/luv.nix { };
  eio_main = callPackage ./eio/main.nix { };

  eio-ssl = callPackage ./eio-ssl { };

  gluten-eio = callPackage ./gluten/eio.nix { };

  h2-eio = callPackage ./h2/eio.nix { };

  httpaf-eio = callPackage ./httpaf/eio.nix { };

  lwt_domain = callPackage ./lwt/domain.nix { };

  lwt_eio = callPackage ./eio/lwt_eio.nix { };

  mirage-bootvar-solo5 = callPackage ./mirage-bootvar-solo5/default.nix { };
  mirage-clock-solo5 = callPackage ./mirage-clock-solo5/default.nix { };
  mirage-solo5 = callPackage ./mirage-solo5/default.nix { };
  
  mirage-crypto-rng-eio = buildDunePackage {
    pname = "mirage-crypto-rng-eio";
    inherit (mirage-crypto) src version;
    propagatedBuildInputs = [
      eio
      cstruct
      logs
      mirage-crypto-rng
      mtime
      duration
    ];
  };

  piaf = callPackage ./piaf { };
  carl = callPackage ./piaf/carl.nix { };

  ppx_rapper_eio = callPackage ./ppx_rapper/eio.nix { };

  tls-eio = buildDunePackage {
    pname = "tls-eio";
    inherit (tls) version src;
    propagatedBuildInputs = [ tls mirage-crypto-rng mirage-crypto-rng-eio x509 eio ];
  };

  websocketaf-eio = callPackage ./websocketaf/eio.nix { };
}
