# Laba5_ZFS
export/import + adjust pools 


1. Определить алгоритм с наилучшим сжатием (gzip, gzip-N, zle, lzjb, lz4)

Лучшее сжатие у gzip-9 (на примере сжатия ядра linux) 
```
zfs get compression,compressratio

NAME        PROPERTY       VALUE     SOURCE
stripe      compression    off       default
stripe      compressratio  2.09x     -
stripe/fs1  compression    gzip      local
stripe/fs1  compressratio  3.44x     -
stripe/fs2  compression    gzip-9    local
stripe/fs2  compressratio  3.45x     -
stripe/fs3  compression    lz4       local
stripe/fs3  compressratio  2.29x     -
stripe/fs4  compression    lzjb      local
stripe/fs4  compressratio  1.92x     -
stripe/fs5  compression    zle       local
stripe/fs5  compressratio  1.16x     -
```
2. Определить настройки pool’a

Параметры пула Otus
```
zpool list

NAME     SIZE  ALLOC   FREE  CKPOINT  EXPANDSZ   FRAG    CAP  DEDUP    HEALTH  ALTROOT
otus     480M  2.11M   478M        -         -     0%     0%  1.00x    ONLINE  -

zfs get type,recordsize,compression,checksum

NAME            PROPERTY     VALUE       SOURCE
otus/hometask2  type         filesystem  -
otus/hometask2  recordsize   128K        inherited from otus
otus/hometask2  compression  zle         inherited from otus
otus/hometask2  checksum     sha256      inherited from otus
```

3. Найти сообщение от преподавателей (файл secret message)


Внутри ссылка на GitHub - https://github.com/sindresorhus/awesome


