#!/bin/bash

# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.

# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.

# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.

# Copyright 2019 Alessandro "Locutus73" Miele

# You can download the latest version of this script from:
# https://github.com/MiSTer-devel/Scripts_MiSTer

# Version 2.0 - 2021-08-30 - Tests if executed on a 5.X Kernel system (thanks to MiSTer Addons for the help with testing).
# Version 1.0 - 2019-02-XX - First commit



KERNEL_VERSION="$(uname -r)"
KERNEL_VERSION="${KERNEL_VERSION%%-*}"
if [[ "${KERNEL_VERSION}" > "5.0.0" ]]
then
	echo "This script is not compatible"
	echo "with the current 5.X Kernel system"
	echo "and will be updated"
	echo "as soon as possible."
	exit 1
fi

SCRIPT_PATH="$(realpath "$0")"

GDRIVE_URL="https://github.com/odeke-em/drive"
GDRIVE_COMMAND="gdrive"
GDRIVE_OPTIONS="pull -exclude-ops delete -ignore-conflict -no-prompt"
BASE_PATH="/media/fat"
SYNC_PATH="$BASE_PATH/config"

source "$(dirname "$SCRIPT_PATH")/gdrive.sh.inc"