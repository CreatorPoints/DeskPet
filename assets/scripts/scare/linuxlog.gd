
extends Label

func error() -> void:
	text ="nvme 0000:dc:00.0: I/O 200 QID 1 timeout, aborting
nvme 0000:dc:00.0: I/O 201 QID 1 timeout, aborting
BUG: unable to handle kernel NULL pointer dereference at 0000000000000048
IP: [<ffffffffa011e82f>] nvme_queue_rq+0x2af/0xa70 [nvme]
PGD 0 
Oops: 0000 [#1] SMP 
...
CPU: 110 PID: 2808 Comm: kworker/110:1H Tainted: G           OE  ------------   3.10.0-514.el7.x86_64 #1
Hardware name: TBD by OEM TBD by OEM/Type2 - Board Product Name1, BIOS 1.00.09 12/01/2017
Workqueue: kblockd blk_mq_timeout_work
task: ffff88204adede20 ti: ffff88205df38000 task.ti: ffff88205df38000
RIP: 0010:[<ffffffffa011e82f>]  [<ffffffffa011e82f>] nvme_queue_rq+0x2af/0xa70 [nvme]
RSP: 0018:ffff88205df3bab8  EFLAGS: 00010246
RAX: 0000000000000001 RBX: ffff88205bb1a500 RCX: 0000000000000000
RDX: 0000000000000001 RSI: 0000000000000000 RDI: ffff88205df3bb60
RBP: ffff88205df3bb90 R08: 0000000000000000 R09: ffff88205df3bbb8
R10: 0000000000000000 R11: ffff88205df3bb20 R12: ffff8818fb06a000
R13: 0000000000000000 R14: 0000000000000000 R15: ffff882058420240
FS:  0000000000000000(0000) GS:ffff88205e080000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 0000000000000048 CR3: 00000000019ba000 CR4: 00000000003407e0
DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
Stack:
ffffffff810888b4 ffffffff81d374a0 bed2310000000032 0000000000000026
ffff88205df3bbe8 ffffffff818ff4f4 0000000000f3bb20 0000000000000246
ffff88205df3bb30 0000000000000004 ffffffff818ff4f4 ffff88205df3bbe8
Call Trace:
[<ffffffff810888b4>] ? vprintk_emit+0x3c4/0x510
[<ffffffff812f88e2>] __blk_mq_run_hw_queue+0x1e2/0x3a0
[<ffffffff812f86d5>] blk_mq_run_hw_queue+0xa5/0xd0
[<ffffffff812f9ff2>] blk_mq_insert_request+0xa2/0xc0
[<ffffffff812f4253>] blk_execute_rq_nowait+0x73/0x180
[<ffffffffa011fbfa>] nvme_timeout+0x1ca/0x1e0 [nvme]
[<ffffffff812f854f>] blk_mq_rq_timed_out+0x2f/0x80
[<ffffffff812f85ef>] blk_mq_check_expired+0x4f/0x90
[<ffffffff812fabd4>] bt_for_each+0xe4/0xf0
[<ffffffff812f85a0>] ? blk_mq_rq_timed_out+0x80/0x80
[<ffffffff812fb54e>] blk_mq_queue_tag_busy_iter+0x4e/0xc0
[<ffffffff812f85a0>] ? blk_mq_rq_timed_out+0x80/0x80
[<ffffffff812f6d6b>] blk_mq_timeout_work+0x8b/0x180
[<ffffffff810a7f3b>] process_one_work+0x17b/0x470
[<ffffffff810a8d76>] worker_thread+0x126/0x410
[<ffffffff810a8c50>] ? rescuer_thread+0x460/0x460
[<ffffffff810b052f>] kthread+0xcf/0xe0
[<ffffffff810b0460>] ? kthread_create_on_node+0x140/0x140
[<ffffffff81696418>] ret_from_fork+0x58/0x90
[<ffffffff810b0460>] ? kthread_create_on_node+0x140/0x140
[55012.807255] Code: 00 00 48 83 f9 01 b9 08 00 00 00 f3 48 ab 41 8b 87 10 01 00 00 45 19 c0 83 e2 01 f7 da 41 f7 d0 83 c2 02 41 83 e0 07 66 89 45 92 <41> 8b 46 48 88 55 90 41 8b 56 4c 89 45 94 49 8b 47 68 8d 4a f7 "
	await get_tree().create_timer(0.001054).timeout
	text += "\n[55012.808309] RIP  [<ffffffffa011e82f>] nvme_queue_rq+0x2af/0xa70 [nvme]"
	await get_tree().create_timer(0.000500).timeout
	text += "\n[55012.808808]  RSP <ffff88205df3bab8>"
	await get_tree().create_timer(0.000476).timeout
	text += "\n[55012.809284] CR2: 0000000000000048"
