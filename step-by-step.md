# step by step
### warning: this tutorial was created to be executed using the less amount of mental effort possible, so it contains several trivial steps(i.e. prereqs: arch and literacy)

## internet
first of all, after you install arch(and also git and firefox as optional packages) you should have a pendrive to download the `internet.sh`, then plug it and follow this
```
lsblk
```
it will show all the partitions found, for the sake of example supose that the pendrive is named sdX, then do
```
sudo mkdir /mnt/pendrive
sudo mount /dev/sdX /mnt/pendrive
cd /mnt/pendrive
chmod 777 internet.sh
./internet.sh
```

## ssh key
now youre connected to the internet you have to manually(;-;) config your ssh key for github
```
mkdir ~/.ssh
ssh-keygen -t ed25519 -C "your_email@example.com"
cat ~/.ssh/id_ed25519.pub
```
it will print a string, copy it(includindo the ssh-somethin and the email) and (add a new ssh key)[https://github.com/settings/keys], then copy there

### config
```
git clone git@github.com:gabrieloak123/arch-dotfiles.git
cd arch-dotfiles
chmod 777 basic-setup.sh
./basic-setup.sh
```
