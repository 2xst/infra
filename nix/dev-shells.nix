{
  perSystem =
    {
      pkgs,
      lib,
      self',
      ...
    }:
    {
      devShells = {
        default = pkgs.mkShellNoCC {
          packages =
            with pkgs;
            [
              github-cli
            ]
            ++ lib.attrValues self'.packages;
        };
      };
    };
}
