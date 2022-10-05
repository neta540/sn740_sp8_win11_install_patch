# Western Digital SN740 on Surface Pro 8

*This may apply to other PCIe 4.0 NVMe drives out there such as the Kioxia BG5*

Surface Pro 8 is a great device. It's faster with WD SN740 NVMe drive, but that drive causes the installation to crash, and even if you're lucky enough to pass the install it will crash later, during sleep, etc. It's a pain.

After some investigations and countless of hours tries to stabilize my system, it appears that a combination of *PCI Express Link State Power Management* and *AHCI Link Power Management - HIPM/DIPM* setings in Power Options are necessary to install and run Windows with this drive on the Surface Pro 8.

The problem is that the installation crashes before we're able to change these settings through the Power Options window, so the solution is to mount the Windows installation drive and modify the registry offline by loading the hive.
