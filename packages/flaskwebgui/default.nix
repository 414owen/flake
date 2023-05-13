{ buildPythonPackage, fetchPypi, lib, fastapi, python-socketio, psutil }:

buildPythonPackage rec {
  pname = "flaskwebgui";
  version = "1.0.3";

  src = fetchPypi {
    inherit pname version;
    sha256 = "sha256-eG1G3BvmXmu0a1qkoOs699Uxdpy3Vvt6RCpk01le5yo=";
  };

  propagatedBuildInputs = [
    psutil
    fastapi
    python-socketio
  ];

  meta = with lib; {
    description = "Create desktop applications with Flask/Django/FastAPI!";
    homepage = "https://github.com/ClimenteA/flaskwebgui";
  };
}
