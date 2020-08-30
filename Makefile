
cc	 = sdcc
src	 = ./src/
obj	 = ./obj/
output	 = ./output/
ihxname  = mian.ihx
objects	 = $(obj)main.rel $(obj)control.rel $(obj)dht11.rel $(obj)e2prom.rel $(obj)lcd1602.rel $(obj)serial.rel $(obj)wdt.rel
edit:$(output)main.hex
	objcopy -I ihex -O binary $(output)main.hex $(output)main.bin
$(output)main.hex:$(obj)$(ihxname)
	packihx $(obj)$(ihxname) > $(output)main.hex
$(obj)$(ihxname):$(objects)
	$(cc) $(objects) -o $(obj)mian.ihx
$(obj)control.rel:$(src)control.c
	$(cc) -c $(src)control.c -o $(obj)
$(obj)dht11.rel:$(src)dht11.c
	$(cc) -c $(src)dht11.c -o $(obj)
$(obj)e2prom.rel:$(src)e2prom.c
	$(cc) -c $(src)e2prom.c -o $(obj)
$(obj)lcd1602.rel:$(src)lcd1602.c
	$(cc) -c $(src)lcd1602.c -o $(obj)
$(obj)main.rel:$(src)main.c
	$(cc) -c $(src)main.c -o $(obj)
$(obj)serial.rel:$(src)serial.c
	$(cc) -c $(src)serial.c -o $(obj)
$(obj)wdt.rel:$(src)wdt.c
	$(cc) -c $(src)wdt.c -o $(obj)
.PHONY:clean
clean:
	rm $(obj)*

distclean:
	rm $(output)*
	rm $(obj)*
