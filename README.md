# ASIC-Implementation-of-a-Cruise-Control-System-
## Introduction
This Paper presents a modified Cruise Control System application specific integrated circuit (ASIC) with speed feedback controller in motor drive. The proposed cruise Control ASIC not only decreases the ripple of hysteresis controller but also enhances the performance of motor controller. Verilog hardware description language (Verilog HDL) is used to implement the hardware architecture; and that an ASIC is fabricated in Nangate 45nm process with cell-based design method. Both switching and calculating delay times mainly contribute the ripples which degrade the control quality in motor drive. By using the predictive scheme, we not only improve the ripple issue of the traditional direct torque control technique, but also make the control system more stable by decreasing the time delay in hysteresis controller. According to the measured results, the proposed Cruise Control System ASIC performs with the coverage of 99.10 % and the fault coverage of 98.28 % at the operating frequency of 250 MHz, the supplied voltage of 1.2 V and the power consumption of 36.9976 uW.

## About
- Designed RTL of a Cruise control system in Verilog and verified the design using Verilog testbench. "Modelsim"
![Vsim](https://user-images.githubusercontent.com/58098260/102722313-030ecb80-4309-11eb-964e-cefad806a26c.PNG)

- Synthesized the design using Design Compiler and performed pre-layout Static Timing Analysis on the design using Synopsys Primetime.

- Performed automatic place and route on the generated netlist using ICC.
![GDS](https://user-images.githubusercontent.com/58098260/102722336-26397b00-4309-11eb-8301-377b2c3c1edc.PNG)

- Cleaned up DRC and LVS Violations using Calibre.
![LVS](https://user-images.githubusercontent.com/58098260/102722350-40735900-4309-11eb-9b4d-e144e9a633f6.PNG)
