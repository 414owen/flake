{ buildPythonPackage, fetchPypi, lib, fastapi, python-socketio, pytest }:

buildPythonPackage rec {
  pname = "fastapi-socketio";
  version = "0.0.9";

  src = fetchPypi {
    inherit pname version;
    sha256 = "sha256-jHOqlP4b8cmWT/iSM6a6Uu7uw6yLneACTZ2CsR5GveU=";
  };

  propagatedBuildInputs = [
    fastapi
    python-socketio
  ];

  nativeBuildInputs = [
    pytest
  ];

  meta = with lib; {
    description = "Easily integrate socket.io with your FastAPI app.";
    homepage = "https://github.com/pyropy/fastapi-socketio";
  };
}
