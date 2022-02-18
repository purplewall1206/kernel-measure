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
#include <linux/interrupt.h>

#define IRQ_NO 11

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

// ================ common =====================
void testcr0(void)
{
    unsigned long cr0 = read_cr0();
    pr_info("cr0: %016lx\n", cr0);
}

ssize_t read_proc(struct file *filp, char *buf, size_t count, loff_t *offp)
{
    pr_info("%s\n", __func__);
    testcr0();
    return 0;
}

struct file_operations proc_fops = {
    read : read_proc
};

// ================ CR0 =====================

// void testcr0(void)
// {
//     unsigned long cr0 = read_cr0();
//     pr_info("cr0: %016lx\n",cr0);
// }

// ================ CR3 =====================

// ================ CR4 =====================

// ================ IRQ =====================

static irqreturn_t irq_handler(int irq, void *dev_id)
{
    printk(KERN_INFO "Shared IRQ: Interrupt Occurred\n");
    return IRQ_HANDLED;
}

void create_irq(void)
{
    int ret;
    
    ret = request_irq(IRQ_NO, irq_handler, IRQF_SHARED, "TESTIRQ", (void *)irq_handler);
    if (ret < 0) {
        pr_err("create IRQ failed %d\n", ret);
    }
}



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
    free_irq(IRQ_NO, (void *) irq_handler);
    pr_info("%s exit\n", __func__);
    // proc_remove(parent);
}

// MODULE_LICENSE("GPL");
module_init(proc_measure_init);
module_exit(proc_measure_exit);
