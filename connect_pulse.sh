#!/bin/sh

# Copyright (C) 2017-2018 Vilniaus Blokas UAB, https://blokas.io/pisound
# All rights reserved.
#
# This software may be modified and distributed under the terms
# of the BSD license.  See the LICENSE file for details.
#

#. /usr/local/pisound/scripts/common/launch.sh
PATCH="$1"
# shift

echo "$PATCH"
# connect pulse audio source and sink from jack
jack_connect system:capture_1 "PulseAudio JACK Source":front-left
jack_connect system:capture_2 "PulseAudio JACK Source":front-right
jack_connect "PulseAudio JACK Sink":front-left system:playback_1
jack_connect "PulseAudio JACK Sink":front-right system:playback_2


