# kernel measure

度量kernel各个部分的具体开销。


1. lock cpu freq

`cat /proc/cpuinfo | grep MHz`


我测的10次
* syscall：14132最差，平均920上下
* page fault：1830、1352 都是100多
* 读写mov指令：都是30多，但是1000多mov也是30多，2000多最快是56，4096是108
* miss


----------------------
```
Latency Comparison Numbers (~2012)
----------------------------------
L1 cache reference                           0.5 ns
Branch mispredict                            5   ns
L2 cache reference                           7   ns                      14x L1 cache
Mutex lock/unlock                           25   ns
Main memory reference                      100   ns                      20x L2 cache, 200x L1 cache
Compress 1K bytes with Zippy             3,000   ns        3 us
Send 1K bytes over 1 Gbps network       10,000   ns       10 us
Read 4K randomly from SSD*             150,000   ns      150 us          ~1GB/sec SSD
Read 1 MB sequentially from memory     250,000   ns      250 us
Round trip within same datacenter      500,000   ns      500 us
Read 1 MB sequentially from SSD*     1,000,000   ns    1,000 us    1 ms  ~1GB/sec SSD, 4X memory
Disk seek                           10,000,000   ns   10,000 us   10 ms  20x datacenter roundtrip
Read 1 MB sequentially from disk    20,000,000   ns   20,000 us   20 ms  80x memory, 20X SSD
Send packet CA->Netherlands->CA    150,000,000   ns  150,000 us  150 ms

Notes
-----
1 ns = 10^-9 seconds
1 us = 10^-6 seconds = 1,000 ns
1 ms = 10^-3 seconds = 1,000 us = 1,000,000 ns

Credit
------
By Jeff Dean:               http://research.google.com/people/jeff/
Originally by Peter Norvig: http://norvig.com/21-days.html#answers

Contributions
-------------
'Humanized' comparison:  https://gist.github.com/hellerbarde/2843375
Visual comparison chart: http://i.imgur.com/k0t1e.png
```


# 本次实验的坑

1. ubuntu21.10 里面装4.19.229内核的问题

initramfs failed to compress， junk files archive

主要原因是kernel4.x 不支持zstd压缩，但是ubuntu用zstd压缩了initramfs。

解决办法是在`/etc/initramfs-tools/update-initramfs.conf`里面把压缩算法改成支持的，比如gzip

2. 小窍门 `LOCALVERSION=-custom`

`make CC=clang -j8 LOCALVERSION=-custom` 之后能够在kernel中显示自己命名的kernel version，比较好。