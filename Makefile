cc	 = sdcc
flashtool= stcflash
src	 = ./src/
obj	 = ./obj/
output	 = ./output/
ihxname  = main.ihx
hexname  = main.hex
objects	 = $(obj)main.rel $(obj)control.rel $(obj)dht11.rel $(obj)e2prom.rel $(obj)lcd1602.rel $(obj)serial.rel  $(obj)wdt.rel

help:
	@echo "Usage: make                same as make help"
	@echo "       make help           same as make"
	@echo "       make auto           auto make and flash"
	@echo "       make hex            create hex"
	@echo "       make project        create ihx"
	@echo "       make clean          remove redundant data"
	@echo "       make distclean      remove redundant and hex"
	@echo "       make flash          upload main.hex into flash"
	@echo "       make install        install tool"
	@echo
	@echo "Current values:"
	@echo "       cc=${cc}"
	@echo "       src=${src}"
	@echo "       output=${output}"
	@echo "       ihxname=${ihxname}"
	@echo "       hexname=${hexname}"
	@echo "       objects=${objects}"
	@echo "       flashtool=${flashtool}"
install:
	yay -S sdcc stcflash-git
	
auto:hex
	${flashtool} ${output}${hexname}
	
flash: 
	${flashtool} ${output}${hexname}
	
hex:project
	objcopy -I ihex -O binary $(output)main.hex $(output)main.bin
	
project:$(obj)$(ihxname)
	packihx $(obj)$(ihxname) > $(output)main.hex
	
$(obj)$(ihxname):$(objects)
	$(cc) $(objects) -o $(obj)main.ihx
	
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
