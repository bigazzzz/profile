wget -q https://github.com/devops-works/binenv/releases/latest/download/binenv_linux_amd64
wget -q https://github.com/devops-works/binenv/releases/latest/download/checksums.txt
sha256sum  --check --ignore-missing checksums.txt
mv binenv_linux_amd64 binenv
chmod +x binenv
./binenv update
./binenv install binenv
rm binenv
if [[ -n $BASH ]]; then ZESHELL=bash; fi
if [[ -n $ZSH_NAME ]]; then ZESHELL=zsh; fi
echo $ZESHELL
echo -e '\nexport PATH=~/.binenv:$PATH' >> ~/.${ZESHELL}rc.local
echo "source <(binenv completion ${ZESHELL})" >> ~/.${ZESHELL}rc.local
exec $SHELL
