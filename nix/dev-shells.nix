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
          packages = lib.attrValues self'.packages;
        };
      };
    };
}
