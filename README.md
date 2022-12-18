![iotdays logo](/iotdays.png)

# FloridaJS official IoT Days Repo



## What is it?
The FLorida IoT Days has been going on for the last 6 years. <br>
Originally started by [MiamiJS](https://miamijs.com) back in 2016 as part of the global [NodeBot Days](https://nodebots.io/#nodebots-day). <br>
We have been making blinking lights in the real world while writting NodeJS/Javascript for a long time and it's still continuing.

## How to get started
We usually have kits you can use that include:
- a ESP8266 board (flashed )
- bread board
- LED Lights (many)
- switches
- dimmers (variable resisters)
- Lots of wires
We make them do magical things!

## Why we use "Espruino"
Originally we were using the [Johnny Five Framework](http://johnny-five.io/) to make our laptops running node connect and control arduion devices to blink those lines.<br>
But we have since then changed to "Espruino" because it's real javascript running on the actual micro controllers.<br>
We have kept our code and notes if you wish to follow the way we use to do it and kept them in our [johnny five Repo](./johnny-five_Library/) should you wish to use it or check what we use to use.

## Espruino links
[Espruino IDE](https://www.espruino.com/ide/)

## Flashing your ESP8266 board
Sometimes we want the latest Espruino Software running on our ESP8266 or ESP32 devices.

To achieve this we need a couple of things.
- [ESPTOOL Application](https://github.com/espressif/esptool/releases)
- [Latest Espruino firmare](http://www.espruino.com/Download)

You'll need to download the ESPTool for your OS (if it's linux or Mac make sure to ```chmod a+x esptool``` to make the binary  executable)

Then the serial port that is connected to your device to do so you can go to the [Espruino IDE](https://www.espruino.com/ide/) and click on the connect icon (top right corner) then when the serial ports are listed plug and unplug your device and notice what serial port is added/removed

You'll need that to the right of the "--port" part of the script you'll be running which will be [flash.sh](./flash.sh) or [flash.bat](./flash.bat) depending on your decide.<br>

Here's an example of what I had to run on my 2014 Macbook Air 11" (yeah...jelous???) that allowed me to flash my ESP8266 in 2022
```
sudo ./esptool --port  /dev/cu.usbserial-1410 --baud 460800 write_flash --flash_freq 80m --flash_mode dio --flash_size 4MB 0x0000 espruino_2v16_esp8266_4mb_combined_4096.bin 
```

## Official Espruino Documentation and Examples:
- [Fancy Examples](https://www.espruino.com/Tutorials)
- [Individual API Docs](https://www.espruino.com/Reference#software)
- [Basic Button](https://www.espruino.com/Button)
- [Basic Blinky light (remember our LED1 => "new Pin(4)" )](https://www.espruino.com/Flashing+Lights)
- [Official Espruino ESP8266 FAQ](https://www.espruino.com/EspruinoESP8266)
- [NodeMCU Faq for some ESP8266 boards](http://www.espruino.com/Reference#t_NodeMCU)

### The official Slides
[Official slides](https://docs.google.com/presentation/d/1iO17lf9EuHo49y0Dhbg-cbcTZwh_rV7azII3923GJf4/edit?usp=sharing)
