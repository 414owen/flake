{ buildPythonPackage, fetchPypi, lib, fastapi, python-socketio, pytest }:

buildPythonPackage rec {
  pname = "fastapi-socketio";
  version = "0.0.10";

  src = fetchPypi {
    inherit pname version;
    sha256 = "sha256-IC+bMZ8BAAHL0RFOySoNnrX1ypMW6uX9QaYIjaCBJyc=";
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
