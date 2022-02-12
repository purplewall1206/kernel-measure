#include <linux/init.h>
#include <linux/module.h>
#include <asm/current.h>
#include <linux/kernel.h>
#include <linux/proc_fs.h>
#include <linux/slab.h>
#include <linux/seq_file.h>
MODULE_LICENSE("GPL v2");
MODULE_AUTHOR("ppw");

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

#define MODULE_NAME "proc_measure"

int proc_measure_show(struct seq_file *seq, void *offset ) 
{
    char *msg = "this is test\n";
    // count = strlen(msg);
    seq_printf(seq, msg);
    return 0;
}

static int proc_measure_open(struct inode *inode, struct file *file)
{
	return single_open(file, proc_measure_show, NULL);
}

const struct proc_ops proc_fops = {
    .proc_open		= proc_measure_open,
	.proc_read		= seq_read,
};

static int __init proc_measure_init(void)
{
    pr_info("proc_measure simulate loaded at %p\n", MODULE_NAME, proc_measure_init);
    proc_create("proc_measure", 0, NULL, &proc_fops);
    return 0;
}

void __exit proc_measure_exit(void)
{
    pr_info("proc_measure simulate unload at %p\n", MODULE_NAME, proc_measure_exit);
    remove_proc_entry("proc_measure", NULL);
}

module_init(proc_measure_init);
module_exit(proc_measure_exit);