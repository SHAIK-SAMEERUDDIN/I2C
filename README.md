# I2C

I2C Protocol Master and Slave Implementation in Verilog

This project involves the complete implementation of the Inter-Integrated Circuit (I2C) protocol in Verilog, providing both master and slave functionality. The I2C protocol is widely used for low-speed, short-distance communication between integrated circuits, enabling data transfer using only two lines: SCL (Serial Clock Line) and SDA (Serial Data Line).

Master Implementation: The I2C master is responsible for initiating communication, generating clock signals on the SCL line, and controlling data flow on the SDA line. 
Slave Implementation: The I2C slave responds to communication initiated by the master.

The Verilog implementation includes:
a) Start and Stop condition generation: Managing when to begin and end communication.
b) Clock control: Generating the clock pulses required for synchronous data transmission.
c) Addressing: Sending 7- or 10-bit addresses to select the appropriate slave device.
d) Data read/write: Handling bidirectional data transmission, supporting multiple master/slave configurations.
e) ACK/NACK management: Managing acknowledgment signals to ensure successful data transfer.
f) Address recognition: Monitoring the SDA line for the master’s address and responding if the address matches the slave’s.
g) Data reception and transmission: Depending on the read/write bit, the slave either transmits data to the master or receives data from it.
h) ACK/NACK generation: Sending acknowledgment signals to confirm successful reception of data.
i) State machine control: Implementing a finite state machine (FSM) to handle the various states of I2C communication, such as idle, address recognition, data transfer, and stop condition.
