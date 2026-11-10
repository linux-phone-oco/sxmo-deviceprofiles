# Adding a phone

1. Find the phone's Sxmo name (the first compatible; see README) and its values on a running Sxmo:
   `swaymsg -t get_inputs` (button identifiers), `swaymsg -t get_outputs` (the display),
   `ls /dev/input/by-path` (the vibration motor's stable name).
2. Write `profiles/sxmo_deviceprofile_<compatible>.sh` with the SPDX line and only the values that
   differ from Sxmo's defaults; one file per panel or variant compatible.
3. Check it by hand (README: Trying one) and add the phone to the table in README.
4. Open a pull request: CI checks the file name, the SPDX line and shellcheck.
