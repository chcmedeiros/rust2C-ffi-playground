#!/bin/sh

cd rust-bindings
cargo clean
cargo build --release
cd ..

cbindgen rust-bindings -o generated_bindings.h

gcc -o hello_from_rust \
    -L rust-bindings/target/release/ \
    -l rust_bindings \
    main.c
