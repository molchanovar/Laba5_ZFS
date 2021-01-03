# Laba5_ZFS
export/import + adjust pools 


1. Определить алгоритм с наилучшим сжатием (gzip, gzip-N, zle, lzjb, lz4)
Лучшее сжатие у gzip-9 (на примере сжатия ядра linux) 
```
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
3. Найти сообщение от преподавателей
