# RPi Pico remote sensor shield
RPPico shield for sensors and wireless data transfer

![Board](doc/images/board_photo.png)

## Firmware installation
This shield has example firmware to transmit and reaceive data.
Before any scripts uploaded [Micropython must be installed](https://micropython.org/download/rp2-pico/) to you RPi pico board

### Install from github
If you wand just to run firmware and check how it works, the easiest way is to install it as package
You will need [mpremote](https://docs.micropython.org/en/latest/reference/mpremote.html) tool to perform this operation.
After you board connected to usb and MicroPython installed execute:
```bash
mpremote.py mip install https://raw.githubusercontent.com/pavlot/pico_remote_sensor/main/firmware/package.json
```
This will install firmware package and required dependencies to your board.

This firmware shipped with two modules: transmitter and receiver.

Open Micropython REPL session with  
```bash
mpremote.py
```
and execute
```python
from firmware import receiver
```
On console you should see something like:
```
INFO:root:TX part started
INFO:root:----  Starting module initialisation ------
INFO:root:Is RFMx chip connected: True
INFO:root:Chip id: 63000000
INFO:root:RF channel set to 4
INFO:root:LNA gain set to high
INFO:root:Data rate is: 250ksps
INFO:root:Adress width binary value: 11
INFO:root:Pipe 0 enabled
INFO:root:RX_Pipe 0 address set to 1122332211
INFO:root:PipeAddr after set: 1122332211
INFO:root:PipeAddr: 1122332211
INFO:root:Pipe 0 RX payload width is 5
INFO:root:Auto acknowledge disabled
INFO:root:CRC encoding scheme 2 bytes
INFO:root:CRC enabled
INFO:root:RFx module power up
INFO:root:----  Module initialisation done ------
INFO:root:----  Starting main receive loop ------
```
it means that rx part is ready to receive data. Default implementation will output all receivet data as hex values to INFO logger, e.g.
```
INFO:root:Data received: cafeb0ba01
```