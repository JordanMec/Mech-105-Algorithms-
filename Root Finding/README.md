# Root Finding Problem and False Position Algorithm
The FalsePosition.m is a matlab code estimates the root of a given function using the False Position method. The RootFindingProblem.m is an application of that code.
## Input and Outputs:
- Input:
1. Func: the function being evaluated
2. xl: The lower guess
3. xu: The upper guess
4. es: The desired relative error
5. maxit - Max number of itterations
6. varagin: additional parameters

- Output:
1. root: estimated root
2. fx: Funct. evaluated at the root location
3. ea: approximate relative error (%)
4. iter: how many iterations were performed

### Error Checking:
Detect non-sensical inputs
