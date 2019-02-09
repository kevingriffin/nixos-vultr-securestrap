Bootstraps a vultr server with nixos with LUKS root encryption

- **Replace public key with your own in configuration.nix**
- **Replace LUKS password with your own in bootstrap.sh**

```
nix-env -iA nixos.gitMinimal

git clone https://github.com/seqizz/nixos-vultr-securestrap

cd nixos-vultr-securestrap

./bootstrap.sh

reboot
```
