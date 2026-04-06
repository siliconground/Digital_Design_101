clean: 
	rm -rf cds.lib hdl.var *.lib waves.shm *.log *.key *.d xrun.*
set: 
	touch cds.lib hdl.var
	mkdir mux4x1.lib
	echo "define mux4x1_lib ./mux4x1.lib" >> ./cds.lib
	echo "define WORK mux4x1_lib" >> ./hdl.var
compile: set
	xmvlog -MESS ./*v
elab: compile
	xmelab -MESS -access rwc mux4x1_behav
	xmelab -MESS -access rwc tb_mux4x1_behav

sim: 
	xmsim -MESS tb_mux4x1_behav -gui


all: clean set compile elab sim
