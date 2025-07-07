# Numerical Methods for Optimization and SPD Linear Systems

This folder contains MATLAB implementations of classical numerical methods for solving optimization problems and symmetric positive definite (SPD) linear systems of equations.

## Methods Included

Each subfolder contains a standalone implementation of one numerical method, along with a sample linear system and supporting scripts for running and analyzing the method.

### [Gradient Method](./gradient-method)

An iterative steepest-descent method with optimal step size for solving SPD systems or minimizing quadratic functions. Simple but may converge slowly.

### [Conjugate Gradient Method](./conjugate-gradient-method)

An improved method that constructs conjugate directions to accelerate convergence when solving SPD systems. Typically requires fewer iterations than the basic gradient method.
