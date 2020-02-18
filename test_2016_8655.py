import os


target = "./CVE-2016-8655"

thread1 = 0x4008DD	#CPU_index is 0
thread2 = 0x400912	#CPU_index is 1

# hw_bp_addr sched __start_routine
hw_bps_list = [[0xFFFFFFFF82952FAF, 1, thread1], [0xFFFFFFFF82956167, 2, thread2]]


















#========The following no need to be modified========
#        PHASE 1: bind thread to CPU
#        PHASE 1.1: modify the thread_addr in libhook.c
hw_bps = []
for bp in hw_bps_list:
    bp_dict = {"addr": bp[0],"sched": bp[1]}
    if(bp[2] == thread1):
        bp_dict["CPU_index"] = 0
    else:
        bp_dict["CPU_index"] = 1
    hw_bps.append(bp_dict)

bp_assign = ""
for i in range(len(hw_bps)):
    bp_assign += "    hw_bps[%d]->addr = %s;\n" % (i, hex(hw_bps[i]["addr"]))
    bp_assign += "    hw_bps[%d]->sched = %d;\n" % (i, hw_bps[i]["sched"])
    bp_assign += "    hw_bps[%d]->CPU_index = %d;\n" % (i, hw_bps[i]["CPU_index"])
    bp_assign += "\n"

lines = []
with open('libhook.c', 'r+') as f:
    for line in f.readlines():
        lines.append(line)
bp_assign_start = lines.index("    //START OF BREAKPOINT ASSIGN\n")
bp_assign_end = lines.index("    //END OF BREAKPOINT ASSIGN\n")
del lines[bp_assign_start+1: bp_assign_end]
lines.insert(bp_assign_start+1, bp_assign)

data = ''
for line in lines:
    if(line.find('#define BPS_NUM') == 0):
        line = '#define BPS_NUM %d' % (len(hw_bps_list),) + '\n'
    if(line.find('void* thread1') == 0):
        line = 'void* thread1 = %s;' % (hex(thread1),) + '\n'
    if(line.find('void* thread2') == 0):
        line = 'void* thread2 = %s;' % (hex(thread2),) + '\n'
    data += line

with open('libhook.c', 'w') as f:
    f.writelines(data)
f.close()

#        PHASE 1.2: compile libhook.c
os.system('gcc -shared -fPIC -o libhook.so libhook.c -ldl')


#        PHASE 2: insert hw_bps & run
os.system('LD_PRELOAD="./libhook.so" %s' % (target,))
