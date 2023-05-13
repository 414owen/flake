{ buildPythonPackage, fetchPypi, lib, fastapi, python-socketio }:

buildPythonPackage rec {
  pname = "flask-webgui";
  version = "1.0.3";

  src = fetchPypi {
    inherit pname version;
    sha256 = "sha256-jH3qlP4b8cmWT/iSM6a6Uu7uw6yLneACTZ2CsR5GveU=";
  };

  propagatedBuildInputs = [
    fastapi
    python-socketio
  ];

  meta = with lib; {
    description = "Create desktop applications with Flask/Django/FastAPI!";
    homepage = "https://github.com/ClimenteA/flaskwebgui";
  };
}
