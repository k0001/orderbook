{ mkDerivation, base, hspec, hspec-expectations-pretty-diff
, hspec-smallcheck, HUnit, protolude, QuickCheck, safe-money
, smallcheck, stdenv, tasty, tasty-quickcheck, tasty-smallcheck
, text, vector
}:
mkDerivation {
  pname = "orderbook";
  version = "0.1.0.0";
  src = ./.;
  libraryHaskellDepends = [ base protolude safe-money text vector ];
  testHaskellDepends = [
    base hspec hspec-expectations-pretty-diff hspec-smallcheck HUnit
    protolude QuickCheck safe-money smallcheck tasty tasty-quickcheck
    tasty-smallcheck text vector
  ];
  homepage = "https://github.com/runeksvendsen/orderbook#readme";
  description = "Short description of your package";
  license = stdenv.lib.licenses.bsd3;
}
