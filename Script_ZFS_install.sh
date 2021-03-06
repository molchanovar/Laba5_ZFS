#!/bin/bash

yum install -y yum-utils

# Скачиваем последний релиз zfs (8.3), и проверяем public key:
yum -y install https://zfsonlinux.org/epel/zfs-release.el8_3.noarch.rpm
gpg --quiet --with-fingerprint /etc/pki/rpm-gpg/RPM-GPG-KEY-zfsonlinux

# pub  2048R/F14AB620 2013-03-21 ZFS on Linux <zfs@zfsonlinux.org>
#    Key fingerprint = C93A FFFD 9F3F 7B03 C310  CEB6 A9D5 A1C0 F14A B620
#    sub  2048R/99685629 2013-03-21

# Установка kABI-tracking kmod, для этого переключаем репозиторий с zfs на zfs-kmod
yum-config-manager --disable zfs
yum-config-manager --enable zfs-kmod
yum repolist --enabled | grep zfs && echo ZFS repo enabled   // проверка работы zfs (in enable)

# Уcтановка zfs и подгрузка модуля zfs в ядро
yum install -y zfs
modprobe zfs

# Создание пула (stripe из 2 дисков)
zpool create stripe /dev/sd{a,b}
