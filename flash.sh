sudo ./esptool --port  /dev/cu.usbserial-1410 --baud 460800 write_flash --flash_freq 80m --flash_mode dio --flash_size 4MB 0x0000 espruino_2v16_esp8266_4mb_combined_4096.bin 