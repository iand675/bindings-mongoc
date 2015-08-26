{ mkDerivation, base, bindings-DSL, bindings-libbson, mongoc, stdenv }:
mkDerivation {
  pname = "bindings-mongoc";
  version = "0.1.0.0";
  src = ./.;
  libraryHaskellDepends = [ base bindings-DSL bindings-libbson ];
  libraryPkgconfigDepends = [ mongoc ];
  homepage = "https://github.com/iand675/bindings-mongoc";
  description = "Bindings to the mongoc library";
  license = stdenv.lib.licenses.asl20;
}
