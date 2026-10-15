{
  perSystem = { pkgs, ... }: {
    packages.terraform = pkgs.opentofu.withPlugins (
      plugins: with plugins; [
        integrations_github
      ]
    );
  };
}
