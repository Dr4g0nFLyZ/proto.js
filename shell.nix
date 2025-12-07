# shell.nix
{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
   name = "ts-dev";

   nativeBuildInputs = [
      pkgs.pkg-config
   ];

   buildInputs = with pkgs; [
      typescript
   ];

   shellHook = ''
      echo "Entering TypeScript development shell ($(tsc --version))"
   '';
}
