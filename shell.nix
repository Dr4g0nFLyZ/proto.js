{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  buildInputs = with pkgs; [
    nodejs
    typescript 
    yarn
    typescript-language-server
  ];

  shellHook = ''
    echo "Entering a reproducible TypeScript development shell (Node.js)"
    # Example: Check versions upon entry
    node --version
    tsc --version
  '';
}