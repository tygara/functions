# Functions

## Flowchart
[Flowchart](docs/flowchart.jpg)

## Phase - 1 Planning
For this lab the plan was to create a function `_oddoreven` which took a register
with a hardcoded value and prints to the console wether that number is `even` or `odd`.
Even tho the value is hardcoded I structured my program is such a way that the value could
be either and the program would handle both cases. 

## Phase - 2 Implementation
I began with a `.data` section declaring and initializing both an `odd` & `even`
variable holding their respective phrases `odd/even` that is to be printed to the console.
Within this section I also made sure to track lengths of the message in each variable to 
use in the `edx` register when it comes time to print. Like I stated before I included 
two print blocks `.printOdd` & `.printEven`. In the main funciton `_oddoreven` at the end 
there is a `jz .printEven` which jumps the program to the `.printEven` block if the `test`
operation directly before flags true. If it does not (such is our case) then the program 
naturally falls through to the `.printOdd` block which uses `jmp` to jump to the `.done`
block where we reset the `ebp` pointer.

## Phase - 3 Debugging
I used gdb to ensure that along every step the program was handling all logic correctly.
