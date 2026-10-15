{
  perSystem = { pkgs, ... }: {
    packages.default = pkgs.opentofu.withPlugins (
      plugins: with plugins; [
        integrations_github
      ]
    );
  };
}
