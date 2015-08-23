# Verilog Operators

## Purpose
- Covers the logical, binary and unary operators available in Verilog

## Bitwise Operators
|Operator Name| Operator Sign|

|NOT| ~|

|AND |&|

|OR |`|`|

|XOR| ^|

|XNOR| ~^ or ^~|

### Truth Tables
References for general future use

#### NOT

|A|~A|
|-|--|
|0|1|
|1|0|

#### AND

|A|B|C|
|-|-|-|
|0|0|0|
|0|1|0|
|1|0|0|
|1|1|1|

#### OR

|A|B|C|
|-|-|-|
|0|0|0|
|0|1|1|
|1|0|1|
|1|1|1|

#### XOR

|A|B|C|
|-|-|-|
|0|0|0|
|0|1|1|
|1|0|1|
|1|1|0|

#### XNOR

|A|B|C|
|-|-|-|
|0|0|1|
|0|1|0|
|1|0|0|
|1|1|1|

### Example

```verilog
wire[3:0] a,b,c; \\a,b,c are now 3- bit signals
assign a = 4'b1010;
assign b = 4'b1100;
assign c = a & b; \\c = 1000;
\\assign c = a | b; \\c = 1110;
\\assign c = a ^ b; \\c = 0110;
\\assign c = a ~^ b; \\c = 1001;
/*
For bitwise operations, every bit pair from A and B would
require a logic gate

If the values have different lengths, the shorter one will be padded
with zeroes
*/
```



