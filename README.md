# ManjaroSetup

from https://gist.github.com/Pastafarianist/35417ddcc41d6f163cd322ff1a2d33d7

1. First of all of course get Manjaro: https://manjaro.org/get-manjaro/

2. I recommend using Etcher to copy the image to your USB: https://etcher.io/

2. Before installing make sure:

- Secure boot is disabled in BIOS
- Your SSD, HDD or NVME drive is set to AHCI instead of RAID (see https://triplescomputers.com/blog/uncategorized/solution-switch-windows-10-from-raidide-to-ahci-operation/ if you want to dual-boot with Windows)
- Fastboot should be on Auto or minimal, but this shouldn't matter to much (note: this contradicts https://wiki.archlinux.org/index.php/Dell_XPS_15_9560, but Auto doesn't seem to cause any issues for me)

3. Once at the GRUB menu do the following (these steps are important, Manjaro won't even boot otherwise):

- For drivers select the nonfree option instead of free, there is no support for Pascal GPUs yet (is planned for 4.12)
- Hover over the option `Boot : Manjaro.x86_64 <your DE>` and press <kbd>e</kbd> to edit the boot entry
	FOR GPU only:
- Look for `quiet` in the boot entry, after `quiet` you should type `acpi_rev_override=1`
- For me it does not work without `modeprobe nouveau modeprobe.blacklist=nouveau` but than GPU is not working

4. Now just install Manjaro like you normally would.
(FOR GPU only) After installation repeat step 3 once you are in Grub as Manjaro will still not be bootable without that parameter.

5. Once Manjaro is installed pretty much everything is set up already.

Manjaro handles things like installing Bumblebee beautifully, but there is one more thing we should do.
(FOR GPU only) We need to add the boot arguments given in step 3.


I recommend doing that from the terminal, but if you want, you can also use something like `grub-customizer` (available from AUR or https://launchpad.net/grub-customizer). This is an UI for making Grub customizations.

- Using terminal
    - `sudo nano /etc/default/grub`
    - Find this line and make sure it looks like this:
    - `GRUB_CMDLINE_LINUX_DEFAULT="quiet acpi_rev_override=1"`
    - Run `sudo update-grub` to update your Grub config and we are done.
- Using `grub-customizer`
    - Open up `grub-customizer`
    - Go to the 'General settings' tab and add `acpi_rev_override=1` after quiet
    - Press 'ctrl + s' or click save and we are done. Your installation should be fully working now.

Some last notes
- I get around 5 to 8 hours of battery life on a i7, 16GB, 512GB 4k model 9560. 
- Stay on kernel 4.9 (standard on Manjaro right now). 
- I have tried 4.11, but it was hard-locking/freezing my XPS 15 every few minutes or wouldn't even boot up.
- 4.11 only adds NVME power management so we aren't missing out on anything.
- Once 4.12 hits I will test and update this guide, hoping there is better support for Pascal as well.