# Simpsons 1/3 Rule
This MATLAB function integrates experimental data using the Simpsons 1/3 rule. If there is an odd number of intervals the trapizoidial rule is used on the last interval.
## Inputs and Outputs
- Inputs (x, y): Experimantal data values
- Output (I): Integral of the vector function values y with respect to x. 
### Error Checking
- The inputs are the same length
- x inputs are equally spaced
- Warn the user if the trapezoidial rule has to be used for the last interval. 
