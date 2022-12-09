{
  description = "5.18 Kernel";

  outputs = { self, nixpkgs }:
  let
    system = "x86_64-linux";
    pkgs = import nixpkgs { inherit system; };
  in
  {
    packages.x86_64-linux = {
      linux_5_18 = pkgs.callPackage ./derivation.nix {
        kernelPatches = [
          pkgs.kernelPatches.bridge_stp_helper
          pkgs.kernelPatches.request_key_helper
        ];
      };
      default = self.packages.${system}.linux_5_18;
    };

  };
}
