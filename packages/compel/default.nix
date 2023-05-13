{ buildPythonPackage, fetchPypi, lib, setuptools, transformers, diffusers, torch, pyparsing }:

buildPythonPackage rec {
  pname = "compel";
  version = "1.0.5";
  format = "pyproject";

  src = fetchPypi {
    inherit pname version;
    sha256 = "sha256-vpMXDsB+7t+ZxlSt795jsBZ76ZqbQlTe0XhAuA/LfFI=";
  };

  propagatedBuildInputs = [
    pyparsing
    setuptools
    diffusers
    transformers
    torch
  ];

#  # TODO FIXME
  doCheck = false;

  meta = {
    description = "A prompting enhancement library for transformers-type text embedding systems";
    homepage = "https://github.com/damian0815/compel";
  };
}
