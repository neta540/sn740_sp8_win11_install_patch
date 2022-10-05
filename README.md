# Western Digital SN740 on Surface Pro 8

*This may apply to other PCIe 4.0 NVMe drives out there such as the Kioxia BG5*

	
![WD SN740](https://github.com/neta540/sn740_sp8_win11_install_patch/blob/main/sn740_img.png)


Surface Pro 8 is a great device. It's faster with WD SN740 NVMe drive, but that drive causes the installation to crash, and even if you're lucky enough to pass the install it will crash later, during sleep, etc. It's a pain.

After some investigations and countless of hours tries to stabilize my system, it appears that a combination of *PCI Express Link State Power Management* and *AHCI Link Power Management - HIPM/DIPM* setings in Power Options are necessary to install and run Windows with this drive on the Surface Pro 8.

The problem is that the installation crashes before we're able to change these settings through the Power Options window, so the solution is to mount the Windows installation drive and modify the registry offline by loading the hive.

More details in Microsoft community discussion: https://answers.microsoft.com/en-us/surface/forum/all/surface-8-pro-new-ssd-compatibility-with-pcie-4/af2c7eff-54ca-4b2c-9e0c-0ab3a274eccd?page=2

This repository includes script files to automate the process of mounting the remote registry and modifying it properly to set the appropriate changes. 

❗ Modifying `diskpart_script.txt` may be necessary according to your partition layout.

