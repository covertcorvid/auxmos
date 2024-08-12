#!/bin/bash

# TODO: add linux
cargo t --target=i686-pc-windows-msvc --features "katmos citadel_reactions" generate_binds
cargo rustc --target=i686-pc-windows-msvc --release --features "katmos citadel_reactions" -- -C target-cpu=native
cargo rustc --target i686-unknown-linux-gnu --release --features "katmos citadel_reactions" -- -C target-cpu=native
echo "Now copy the binary from target/i686-pc-windows-msvc/release/ to the NSV13 repository."
