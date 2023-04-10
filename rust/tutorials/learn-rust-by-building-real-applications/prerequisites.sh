#!/bin/bash

# Update and Upgrade
sudo apt-get update -y
sudo apt-get upgrade -y

# Installing rust
if ! command -v rustc >/dev/null 2>&1 ; then
    echo "Installing Rust"
    curl --proto '=https' --tlsv1.2 https://sh.rustup.rs -sSf | sh
fi

source "$HOME/.cargo/env"

# Check installation
rust_version=$(rustc --version | awk '{print $2}')
cargo_version=$(cargo --version | awk '{print $2}')
rustup_version=$(rustup --version | awk '{print $2}')

echo "Rust version $rust_version is installed"
echo "Cargo version $cargo_version is installed"
echo "Rustup version $rustup_version is installed"

# Installing extension
echo "Installing Rust extension for VSCode"
code --install-extension rust-lang.rust-analyzer
