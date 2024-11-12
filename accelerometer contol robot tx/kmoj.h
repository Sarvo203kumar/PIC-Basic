// GUI generated header file: [GUI_config.h]
// Dual Voltage Mode Control :: SMPS Buck Board
// Date: 23-12-2023
// Time: 14:57:23

//************************** Constant Definitions *************************
// PWM polarity choices
#define ActiveHigh 0
#define ActiveLow 1

// PWM Fault Sources
#define NoSource 16
#define Comparator1 0
#define Comparator2 1
#define Comparator4 3
#define SFLT2SharedFaultPin 9

// Fault responses
#define Shutdown 0
#define CycleByCycle 1

// Radio button selections
#define Checked 1
#define Unchecked 0

// Comparator input choices (lower 8 bits of CMPCONx)
#define Disabled         0x0100
#define Iavg1OverCurrent 0b00000000
#define Iavg2OverCurrent 0b00000000
#define Vout1OverVoltage 0b01000000
#define Vout2OverVoltage 0b01000000
#define R30UnderVoltage  0b00000010
#define R30OverVoltage   0b00000000

// Possible DAC Reference Sources (lower 8 bits of CMPCONx)
#define AVdd_div_2 0b00000001
#define ExternalReference 0b00100000
#define InternalBandgap 0b00000000

//********************************************************************

//************************** GUI Inputs ********************
// Minumum Input Voltage
#define vin_min 8

// Maximum Input Voltage
#define vin_max 10

// Number of Buck phases
#define nphase 2

// Output Voltages
#define vout1 5
#define vout2 3.3

// Output Current
#define iout1 1
#define iout2 1

// Soft startup delays
#define start_delay1 0.01
#define start_delay2 0.01

// Soft startup ramp durations
#define ramp_duration1 0.1
#define ramp_duration2 0.1

// PWM frequency in kHz
#define pwm_freq 400

// Deadtimes in nsec
#define redt1 128
#define fedt1 128
#define redt2 128
#define fedt2 128

// PWM output polarity
#define hs_polarity1 ActiveHigh
#define ls_polarity1 ActiveHigh
#define hs_polarity2 ActiveHigh
#define ls_polarity2 ActiveHigh

// Scaling in Vsense per Vout
#define vout1_scale 0.5
#define vout2_scale 0.5

// Current gain in V/A
#define iavg1_gain 1.25
#define iavg2_gain 1.25

// Input Voltage Scaling
#define vin_gain 0.25

// Fault Sources
#define fault_src1 NoSource
#define fault_src2 NoSource
#define fault_src_unv NoSource

// Fault Responses
#define fault_type1 CycleByCycle
#define fault_type2 CycleByCycle

// Amount of time (in seconds) to wait before trying to restart after a shutdown
#define retry_time1 0.01
#define retry_time2 0.01

// Are the buck circuits tied to one another? In other words, if one shuts down
//  should the other one shutdown
#define buck_link Unchecked

// Comparator input source
#define comp1_source Iavg1OverCurrent
#define comp2_source Iavg2OverCurrent
#define comp4_source Disabled

// Comparator Trip levels
#define comp1_level 1.3
#define comp2_level 1.3
#define comp4_level 2.5

// Comparator DAC reference
#define comp1_ref AVdd_div_2
#define comp2_ref AVdd_div_2
#define comp4_ref AVdd_div_2

// Buck 1 PID gain coefficients
#define Kp1 37.335766
#define Ki1 0.725433
#define Kd1 45.330164

// Buck 2 PID gain coefficients
#define Kp2 37.335766
#define Ki2 0.725433
#define Kd2 45.330164

// Supply Voltages (in Volts)
#define Vdd 5
#define AVdd Vdd

