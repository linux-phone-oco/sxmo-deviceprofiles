# sxmo-deviceprofiles

[Sxmo](https://sxmo.org) device profiles for Linux phones: a profile tells Sxmo a phone's buttons,
display, vibration motor and more. They are made and tested here, then sent upstream to
[sxmo-utils](https://git.sr.ht/~mil/sxmo-utils), where every Sxmo user gets them.

| Device | Profiles | Tested | Upstream |
|---|---|---|---|
| Xiaomi POCO X3 NFC (surya) | `xiaomi,surya-huaxing`, `xiaomi,surya-tianma` | loads, display scale 3 (Huaxing) | patch ready |

## A profile

`profiles/sxmo_deviceprofile_<compatible>.sh`, where `<compatible>` is the first entry of the
phone's device-tree compatible list - the name Sxmo looks for:

    tr -c '\0[:alnum:].,-' '_' < /proc/device-tree/compatible | tr '\0' '\n' | head -n1

A profile sets only what differs from Sxmo's defaults: `SXMO_MONITOR`, `SXMO_POWER_BUTTON`,
`SXMO_VOLUME_BUTTON` (identifiers from `swaymsg -t get_inputs`), `SXMO_SWAY_SCALE`,
`SXMO_VIBRATE_DEV` (a stable `/dev/input/by-path` name) and so on. Each panel variant has its own
compatible, so its own file, as upstream does it.

## Trying one

    install -m 755 profiles/sxmo_deviceprofile_<compatible>.sh /usr/bin/   # on the phone, as root
    # restart Sxmo (or reboot); then check:
    # - the display scale looks right
    # - volume up and down, and the power button, do what Sxmo says they do
    # - a vibration (e.g. a notification) is felt

A profile is "tested" here only once a person has checked those by hand.

## Upstream

sxmo-utils takes patches by mailing list, signed off by their author: add the profile to
`scripts/deviceprofiles/` in a clone of sxmo-utils, commit with `git commit -s`, and
`git send-email --to "~mil/sxmo-devel@lists.sr.ht"`.

See CONTRIBUTING.md to add a phone.
