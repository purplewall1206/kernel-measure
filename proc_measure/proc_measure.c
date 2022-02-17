#include <linux/init.h>
#include <linux/types.h>
#include <linux/module.h>
#include <asm/current.h>
#include <linux/kernel.h>
#include <linux/proc_fs.h>
#include <linux/slab.h>
#include <linux/seq_file.h>
#include "../measure.h"
#include <linux/version.h>
#include <linux/uaccess.h>

// #if LINUX_VERSION_CODE <= KERNEL_VERSION(2,6,16)
// ...
// #else
// ...
// #endif
// MODULE_LICENSE("GPL v2");
// MODULE_AUTHOR("ppw");

// target
// 1. mov to cr3，测tlb刷新
// 2. mov to cr0 , 并测试开关单独的功能影响
// 3. mov to cr4, 开关smap等
// 4. syscall 进出时间
// 5. vmexit时间
// 6. mov指令时间，测缓存不命中
// 7. 缺页中断时间
// 8. 中断处理时间

// 多次处理取平均和波动
char *dirname = "measure";
struct proc_dir_entry *parent;

ssize_t read_proc(struct file *filp, char *buf, size_t count, loff_t *offp)
{
    pr_info("%s\n", __func__);
    return 0;
}

struct file_operations proc_fops = {
    read : read_proc
};

void create_proc_entry(void)
{
    parent = proc_mkdir(dirname, parent);
    proc_create("hello", 0666, parent, &proc_fops);
}



int proc_measure_init(void)
{
    // create_new_proc_entry();
    pr_info("%s init\n", __func__);
    create_proc_entry();
    return 0;
}

void proc_measure_exit(void)
{
    proc_remove(parent);   
    pr_info("%s exit\n", __func__);
    // proc_remove(parent);
}

// MODULE_LICENSE("GPL");
module_init(proc_measure_init);
module_exit(proc_measure_exit);
