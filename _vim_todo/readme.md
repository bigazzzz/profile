Переехал в https://github.com/bigazzzz/profile
# Моя конфигурация vim

Используем VIM

```
apt install vim -y
tea -a .bashrc << EOF
alias vi="vim
EOF
```


Возможно придется установить nerd-fonts для иконок в NerdTree https://github.com/ryanoasis/nerd-fonts


Для плагина автодополнения для Kubernetes необходимо установить nodejs


```
$sudo -s
#curl -sL install-node.now.sh/lts | bash
```

Затем установить плагин yaml

```
:CocInstall yaml
```


## Quick install
```
wget https://raw.githubusercontent.com/bigazzzz/vim-config/master/install.sh
chmod +x install.sh
sudo ./install.sh
