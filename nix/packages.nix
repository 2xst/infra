{
  perSystem = { pkgs, ... }: {
    packages = {
      tofu = pkgs.opentofu.withPlugins (
        plugins: with plugins; [
          integrations_github
        ]
      );
      discover-rulesets = pkgs.callPackage ./packages/discover-rulesets.nix { };
    };
  };
}
