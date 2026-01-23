{ pkgs ? import (fetchTarball "https://github.com/NixOS/nixpkgs/archive/nixos-25.11.tar.gz") {} }:

pkgs.mkShell {
  buildInputs = [
    pkgs.cacert
    pkgs.rustup
    pkgs.protobuf
    pkgs.cargo-deb
    # cargo-cross can be used once version > 0.2.5, as 0.2.5 does not work well
    # with nightly toolchain. It is for now installed through make dev-dependencies.
    # pkgs.cargo-cross
    # pkgs.cargo-cross
  ];
  shellHook = ''
    export PATH=$PWD/.cargo/bin:$PATH
  '';
}
