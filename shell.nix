with (import <nixpkgs> {});
let
  gems = bundlerEnv {
    name = "hits_server";
    inherit ruby;
    gemdir = ./.;
  };
in mkShell {
  buildInputs = [
    gems
    ruby
  ];
}
