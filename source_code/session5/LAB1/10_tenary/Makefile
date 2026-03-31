clean: 
	rm -rf cds.lib hdl.var *.lib waves.shm *.log *.key
set: 
	touch cds.lib hdl.var
	mkdir ./work.lib
	echo "define worklib ./work.lib" >> ./cds.lib
	echo "define WORK worklib" >> ./hdl.var
compile:
	xmvlog -MESS -linedebug ./*v
elab:
	xmelab -MESS -access rwc tenary

sim:
	xmsim -MESS tenary


all: clean set compile elab sim
