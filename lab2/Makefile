.PHONY: run sim clean

run:
	mkdir -p build
	iverilog -o build/${FILE} -y rtl sim/${FILE}_tb.v
	vvp -n build/${FILE} -lxt2
sim:
	gtkwave build/${FILE}.vcd
clean:
	rm -rf build
