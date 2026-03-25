clean: 
	rm -rf xcelium.d *.log *.history *.key
	rm -rf worklib cds.lib hdl.var
	rm -rf *.lib *.shm
set:
	mkdir ./worklib
	touch ./cds.lib
	touch ./hdl.var
	chmod +x cds.lib
	chmod +x hdl.var
	echo "define SN74LS11_lib ./worklib" >> cds.lib
	echo "define WORK SN74LS11_lib" >> hdl.var

compile:
	echo "----------Compile source files----------"
	xmvlog -MESS -linedebug ./*.v
	echo "----------End of compilation----------"

elab: 
	echo "----------Elaboration Design in the WORK library----------"
	xmelab -MESS -access +rwc tb_sn74ls11
	echo "----------End of Elaboration----------"

sim: 
	echo "----------Simulation in GUI mode----------"
	xmsim -MESS tb_sn74ls11 -gui
	echo "----------End of Simulation + Start GUI"

all: clean set compile elab sim
