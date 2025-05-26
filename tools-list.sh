
install_if_missing() {
    local cmd="$1"
    local install_cmd="$2"

    if ! command -v "$cmd" >/dev/null 2>&1; then
				echo -e "\e[1;33m$cmd not found. Installing...\e[0m"
				eval "$install_cmd"
        if [[ $? -eq 0 ]]; then
            echo -e "\e[1;32m$cmd installed successfully.\e[0m"
        else
            echo -e "\e[1;31mFailed to install $cmd.\e[0m"
        fi
    else
        echo -e "\e[1;36m$cmd is already installed.\e[0m"
    fi
}

mkdir -p tools

cd tools

echo "Installing SSTImap: Server-Side Template Injection and Code Injection Detection and Exploitation Tool"
git clone https://github.com/vladko312/SSTImap.git

install_if_missing burpsuite "yay -S burpsuite"
install_if_missing checksec "sudo pacman -S checksec"

