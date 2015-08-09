# Creating a Project

## General Project Structure
* Base folder
* /ipcore_dir - where the IP cores will go
* /isecondif - used by ISE
* /src - where the user created files go
* /syn - the working directory for the ISE
	- The .bin file for the project will be placed here
* Mojo-Base.xise - the project file to load in ISE

## Project Goal
* To wire the RESET button to the bottom LED on the right side
	* When the RESET button is pressed, the LED is turned on
        * When the RESET button is released, the LED turns off

## File
### mojo_top.v
* Important variables
    * input rst_n;
    * output[7:0] led;
    * wire rst;

* input rst_n;
    * _n - used to note an active low signal
    * when the button is pressed, the line goes LOW

* wire rst;
    * neither an input or an output
    * internal signal for the module
    * used to provide an inverse signal

* output[7:0] led;
    * 8-bit bus where each bit represents the state of an LED
    * MSB 7 is the lowest LED - the one we will be controlling
    * LSB 0 is the highest LED
### File Structure
* module <module_name>(...);
    * port declaration
    * contains a list of all inputs and outputs (i.e externally visible) signals
    * the code after the module declaration is the module logic

## Value Notation
### Binary
#### Format {x}'b{y}
* {x} - represents the bit-length of the variable
* b - notes that the value is in binary representation
* {y} - the constant value assigned to the variable
    * Possible digits: 0 or 1
#### Special Values
* z - High-Impedence (disconnected) value 
        * Useful for lines note being used to prevent damage
* x - Don't care
        * Any possible value

#### Examples
* 8'b0
    - 8-bit 0 value
* 2'b11
    - 2-bit 3 value

### Hexadecimal
#### Format {x}'x{y}
    * {x} - still denotes the bit length of the variable
    * x - notes that the value is in hexadecimal format
    * {y} - the value to be stored in the variable
        * Possible digits: 0-9 and A-Z

### Decimal
#### Format {x}'d{y}
    * {x} - bit-length
    * d - notes that the value is in decimal format
    * {y} - the value stored to the variable
        * Possible digits: 0-9

## Signal Definitions

### wires - represents a physical wire in a module
    * Equivalent to a connection between components
    * no memory (storage)
### reg - discussed later on

#### Notes
* bus notation *can* use [7:0], [8:1], or even [0:7]
    - the first format is preferred 
* After declaring a signal type, a value can be given using the assign keyword
* Warnings are common in the Syntheis process