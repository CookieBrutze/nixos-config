{ config, pkgs, ... }:

{
    environment.systemPackages = with pkgs; [
        libvirt
        qemu
        virt-manager
        pkgs.OVMF
    ];

    virtualisation.libvirtd = {
        enable = true;
        qemu = {
            package = pkgs.qemu_kvm;
            runAsRoot = true;
            swtpm.enable = true;
            ovmf = {
                enable = true;
                packages = [(pkgs.OVMF.override {
                    secureBoot = true;
                    tpmSupport = true;
                }).fd];
            };
        };
    };

    users.users.cookie = {
        extraGroups = [ "libvirtd" ];
    };
}
