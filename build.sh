#!/bin/bash
set -e
FLAGS="-p"

west build $FLAGS -b nice_nano_v2 -- -DSHIELD="sheriff_left" -DZMK_CONFIG=/workspaces/zmk-config/config
mv /workspaces/zmk/app/build/zephyr/zmk.uf2  /workspaces/zmk-config/left.uf2
west build $FLAGS -b nice_nano_v2 -- -DSHIELD="sheriff_right" -DZMK_CONFIG=/workspaces/zmk-config/config
mv /workspaces/zmk/app/build/zephyr/zmk.uf2 /workspaces/zmk-config/right.uf2
