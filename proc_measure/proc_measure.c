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

#include <linux/module.h>
#include <linux/kernel.h>
#include <linux/proc_fs.h>
#include <linux/init.h>
#include <linux/sched.h>
#include <asm/uaccess.h>
#include <linux/uaccess.h>
#include <linux/slab.h>
#include <linux/gfp.h>
char *msg;

int proc_init(void)
{
    // create_new_proc_entry();
    pr_info("%s before create\n", __func__);
    msg = (char*)kmalloc(10 * sizeof(char), GFP_KERNEL);
    memcpy(msg, "abc", 3);
    char x;
    pr_info("after create %016lx %016lx\n", msg, &x);
    return 0;
}

void proc_cleanup(void)
{
    
    pr_info("%s  %s\n", __func__, msg);
    kfree(msg);
    // remove_proc_entry(dirname, &proc_fops);
    // proc_remove(parent);
}

// MODULE_LICENSE("GPL");
module_init(proc_init);
module_exit(proc_cleanup);
