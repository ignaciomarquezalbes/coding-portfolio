# Numerical Methods for Solving Optimization and Linear Systems

This repository contains MATLAB implementations of classical numerical methods for solving optimization problems and symmetric positive definite (SPD) linear systems of equations.

**Repository link**: [https://github.com/ignaciomarquezalbes/coding-portfolio/tree/main/optimization-methods](https://github.com/ignaciomarquezalbes/coding-portfolio/tree/main/optimization-methods)

## Included Methods

Each subfolder contains a standalone implementation of one numerical method, along with a sample linear system and supporting scripts for running and analyzing the method.

### [Gradient Method](https://github.com/ignaciomarquezalbes/coding-portfolio/tree/main/optimization-methods/gradient-method)

An iterative steepest-descent method with optimal step size for solving SPD systems or minimizing quadratic functions. Simple but may converge slowly.

### [Conjugate Gradient Method](https://github.com/ignaciomarquezalbes/coding-portfolio/tree/main/optimization-methods/conjugate-gradient-method)

An improved method that constructs conjugate directions to accelerate convergence when solving SPD systems. Typically requires fewer iterations than the basic gradient method.
