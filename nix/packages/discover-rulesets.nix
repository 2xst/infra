{
  writeShellApplication,
  github-cli,
  jq,
}:

writeShellApplication {
  name = "discover-rulesets";
  text = builtins.readFile ../../scripts/discover-rulesets.sh;
  runtimeInputs = [
    # keep-sorted start case=no numeric=yes
    github-cli
    jq
    # keep-sorted end
  ];
}
