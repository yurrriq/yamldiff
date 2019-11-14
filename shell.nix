{
  nixpkgs ? fetchTarball {
    url = "https://github.com/NixOS/nixpkgs/tarball/21c3fabb44b01313dddb7f6ca6ce46bfb6a69585";
    sha256 = "16f97zzgx4mvdzrfzbric3jw9sbz56zgl412f6b4h7jnlj2sx9r0";
  }
}:

with import nixpkgs {
  overlays = [
    (self: super: {
      go = super.go_1_13;
    })
  ];
};

mkShell {
  buildInputs = [
    go
  ];
}
