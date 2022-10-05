set mypath=%cd%
diskpart /s %mypath%\diskpart_script.txt
reg load HKLM\OFFLINE T:\Windows\System32\config\SYSTEM
reg import %mypath%\ahci_patch_offline.reg
reg import %mypath%\pcie_link_state_offline.reg
reg unload HKLM\OFFLINE
pause