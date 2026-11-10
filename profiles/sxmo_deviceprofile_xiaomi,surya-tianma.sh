#!/bin/sh
# poco x3 nfc (tianma panel)
# SPDX-License-Identifier: AGPL-3.0-only
# Copyright 2026 Sxmo Contributors

export SXMO_MONITOR="DSI-1"
export SXMO_POWER_BUTTON="0:0:pm8941_pwrkey"
export SXMO_VOLUME_BUTTON="1:1:gpio-keys 0:0:pm8941_resin"
export SXMO_SWAY_SCALE="3"
export SXMO_VIBRATE_DEV="/dev/input/by-path/platform-884000.i2c-event"
