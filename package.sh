#!/bin/bash

set -e

# Define the root directory where the script and build should be located
ROOT_DIR="$HOME/xrd_data_collect"

if [ ! -d "$ROOT_DIR" ]; then
    mkdir -p "$ROOT_DIR"
fi


DIST_DIR="$ROOT_DIR/dist"
BUILD_DIR="$ROOT_DIR/build"
script_dir="$(cd "$(dirname "$0")" && pwd)"

pyinstaller "$script_dir/data_collector/prod_run.spec" --distpath "$DIST_DIR" --workpath "$BUILD_DIR"
echo "-> Built executable under $ROOT_DIR/dist"
echo "done"
