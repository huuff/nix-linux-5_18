# Usage
First, add the flake to your configuration:

```nix
inputs = {
  kernel-5_18.url = "github:huuff/nix-linux-5_18";
};
```

Then, add it to your `configuration.nix`, wrapping it in `linuxPackagesFor`:

```nix
boot = {
  kernelPackages = pkgs.linuxPackagesFor kernel-5_18
};
```
