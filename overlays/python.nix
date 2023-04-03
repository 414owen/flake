final: prev: {
  pythonPackagesExtensions = prev.pythonPackagesExtensions ++ [
    (
      python-final: python-prev: {
        numpy = python-prev.numpy.overridePythonAttrs (oldAttrs: rec {
          version = "1.23.3";
          src = final.fetchPypi {
            pname = oldAttrs.pname;
            inherit version;
            extension = "tar.gz";
            hash = "sha256-Ub9JwM0dUr4KJAqmbzRYr8S5XYmT0tBPDZH6YMEK9s0=";
          };
        });
        # torch = python-prev.torch.override { rocmSupport = true; };
        # pandas = python-prev.pandas.overridePythonAttrs (oldAttrs: rec {
        #   version = "1.4.4";
        #   src = final.fetchPypi {
        #     pname = oldAttrs.pname;
        #     inherit version;
        #     extension = "tar.gz";
        #     hash = "sha256-q2wNc4YXtnUYPl8o2zK1FItpStm7oKQMPqJtlrQx22c=";
        #   };
        # });
        # fastparquet = python-prev.fastparquet.overridePythonAttrs (oldAttrs: rec {
        #   version = "0.8.1";
        #   toTest = false;
        #   src = final.fetchPypi {
        #     pname = oldAttrs.pname;
        #     inherit version;
        #     extension = "tar.gz";
        #     hash = "sha256-jepAGYY9yBVifeAJExx2GFu/PXb6+oLZbp3yOnoXGMM=";
        #   };
        # });
      }
    )
  ];
}
