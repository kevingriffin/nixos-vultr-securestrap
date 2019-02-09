{ config, pkgs, ...}:

{
  imports =
    [
        <nixpkgs/nixos/modules/profiles/minimal.nix>
        ./hardware-configuration.nix
        ./luks-configuration.nix
    ];

  boot.loader.grub.enable = true;
  boot.loader.grub.version = 2;
  boot.loader.grub.device = "/dev/vda";

  services.openssh.enable = true;

  users.users.root = {
    openssh.authorizedKeys.keys =
      [
        "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCs9Pbv7H3rZPMtDhjeIPjMDstgE/r7Vaa0jAuYB7EUEZP2vnclnaF28oLTWW/Zf6XDarQowPF5EnVOk75PkZIFQ7j5TpwQtaBE1F8LtIVN2d2cGmZmAKhHzhcU/hOedDDVeGvWqM9EQo8LCVSvunTOfGOcuZdqO+iiGG0D2EP6R28r22ZZdVI4f0KQisbIdx7r3Mdz9W55Mh6cRiibfzhjq0M/cvmz1homwznC4GgGL8UNrG5HS0i2qgg/OtmbFH+h1rWGxCktZHeAHUnkEDq1//6jC+mPeTNxlDAOAmUeKGZmDWNDrprryBerp8sPjnB3Io+gCuqbRN9+6fJRs88D"
      ];
  };

  system.stateVersion = "18.09";
}
