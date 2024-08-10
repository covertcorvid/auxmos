#!/bin/bash

# TODO: add linux
cargo t --target=i686-pc-windows-msvc --features "katmos" generate_binds
cargo rustc --target=i686-pc-windows-msvc --release --features "katmos" -- -C target-cpu=native
echo "Now copy the binary from target/i686-pc-windows-msvc/release/ to the NSV13 repository."
