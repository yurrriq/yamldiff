{ stdenv, buildGoModule }:

buildGoModule rec {
  pname = "yamldiff";
  version = builtins.readFile ./VERSION;

  src = ./.;

  goPackagePath = "github.com/yurrriq/yamldiff";

  modSha256 = "1hbgbhhqlv0llpk3mzzxfznpsgvzgljnviaf4d9a7dx329q0p35w";

  buildFlagsArray = ''
    -ldflags=
    -X main.Version=${version}
  '';

  meta = with stdenv.lib; {
    description = "Deploy Kubernetes Helm charts";
    homepage = https://github.com/yurrriq/yamldiff;
    license = licenses.mit;
    maintainers = with maintainers; [ yurrriq ];
    platforms = platforms.unix;
  };
}
