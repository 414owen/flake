{ buildPythonPackage, fetchPypi, lib, fastapi, python-socketio, pytest, boto3, google-cloud-pubsub }:

buildPythonPackage rec {
  pname = "fastapi-events";
  version = "0.8.0";

  src = fetchPypi {
    inherit pname version;
    sha256 = "sha256-Vee/SH5ciV5EYwwR8LEr0E5Sqo7K/NwU/5pN5Psc35A=";
  };

  propagatedBuildInputs = [
    fastapi
    boto3
    google-cloud-pubsub
  ];

  nativeBuildInputs = [
    pytest
  ];

  meta = with lib; {
    description = "Event dispatching library for FastAPI";
    homepage = "https://github.com/melvinkcx/fastapi-events";
  };
}
