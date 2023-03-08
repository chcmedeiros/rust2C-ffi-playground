# rust2C-ffi-playground
Repository to play around with: 
- Importing rust libs and exposing functionalities;
- Use cbindgen to create headers;
- And probably other funny stuff.

Some important links:
https://docs.rust-embedded.org/book/interoperability/rust-with-c.html
https://www.greyblake.com/blog/exposing-rust-library-to-c/
https://apollolabsblog.hashnode.dev/rust-ffi-and-cbindgen-integrating-embedded-rust-code-in-c
https://github.com/Gankra/tutorial-cbindgen

###### Install cbindgen
    cargo install --force cbindgen
###### Build rust lib
    cargo build --release
###### Generate bindings file
    cbindgen -o bindings.h

###### Run full example
    sh build.sh
    ./hello_from_rust
