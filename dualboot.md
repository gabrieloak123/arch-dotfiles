# Dual Boot

Esse tutorial é exclusivo para uma instalação de linux e windows em unidades de disco diferentes. Primeiramente, é necessário que as duasinstalaçõe estejam funcionais, de forma que a primeira opção de boot na BIOS seja o Linux e a segunda seja o Windows. Feito isso, identifique a partição que contém da EFI do Windows(Geralmente é uma partição de 100mb).


```
lsblk
```
Conhecendo a partição `sdax`, se certifique que existe um arquivo correspondente na pasta `/dev`. Após isso, é necessário montar a partição dentro do Linux.

```
mkdir -p /mnt/windows_efi
mount -t vfat /dev/sdax /mnt/windows_efi
```

Confime se a montagem deu certo:
Instale o `os-prober`:

```
ls /mnt/windows_efi
```

Instale o `os-prober`:

```
pacman -S os-prober
```

Adicione/Descomente a seguinte linha do `/etc/default/grub`

```
GRUB-DISABLE-OS-PROBER=false
```

Execute o `os-prober`:

```
os-prober
```

Caso tudo ocorra conforme o esperado é para termos uma saída semelhante à seguinte:

```
/dev/sdax:Windows Boot Manager:Windows:efi
```

Agora precisamos tornar a montagem persistente, sendo assim adicionamos a seguinte linha no arquivo `/etc/fstab`:

```
/dev/sdax /mnt/windows_efi vfat defaults 0 2
```

Por fim, gere novamente a configuração do GRUB:

```
grub-mkconfig -o /boot/grub/grub.cfg
```

Agora é só reiniciar.
