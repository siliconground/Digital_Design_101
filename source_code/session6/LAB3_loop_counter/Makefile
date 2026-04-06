clean: 
	rm -rf cds.lib hdl.var *.lib waves.shm *.log *.key
set: 
	touch cds.lib hdl.var
	mkdir work.lib
	echo "define work_lib ./work.lib" >> ./cds.lib
	echo "define WORK work_lib" >> ./hdl.var
compile:
	xmvlog -MESS -linedebug ./*v
elab:
	xmelab -MESS -access rwc tb_counter_loop

sim:
	xmsim -MESS tb_counter_loop -gui 


all: clean set compile elab sim
