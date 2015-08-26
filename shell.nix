with (import <nixpkgs> {}).pkgs;
let modifiedHaskellPackages = haskellPackages.override {
      overrides = self: super: {
        bindings-libbson = self.callPackage ../bindings-libbson {};
        bindings-mongoc = self.callPackage ./. {};
      };
    };
in modifiedHaskellPackages.bindings-mongoc.env
